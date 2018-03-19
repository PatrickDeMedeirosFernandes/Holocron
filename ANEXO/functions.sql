

--
-- Database: `tcc`
--

DELIMITER $$
--
-- Procedures
--
 PROCEDURE `split` (IN `input` TEXT CHARSET utf8mb4, IN `delim` VARCHAR(10) CHARSET utf8mb4)  begin
 
    declare foundPos tinyint unsigned;
    declare tmpTxt text CHARSET utf8;
    declare delimLen tinyint unsigned;
    declare element text;
 
    drop temporary table if exists tmpValues;
    create temporary table tmpValues
    (
        `values` varchar(256) CHARSET utf8mb4 not null default ''
    ) engine = memory;
 
    set delimLen = length(delim);
    set tmpTxt = input;
 
    set foundPos = instr(tmpTxt,delim);
    while foundPos <> 0 do
        set element = substring(tmpTxt, 1, foundPos-1);
        set tmpTxt = replace(tmpTxt, concat(element,delim), '');
        insert into tmpValues (`values`) values ( element);
        set foundPos = instr(tmpTxt,delim);
    end while;
 
    if tmpTxt <> '' then
        insert into tmpValues (`values`) values (tmpTxt);
    end if;
 
    END$$

--
-- Functions
--
 FUNCTION `compare_title` (`title` VARCHAR(255) CHARSET utf8mb4, `keyword` VARCHAR(255) CHARSET utf8mb4) RETURNS INT(11) BEGIN
 
    DECLARE done INT DEFAULT 0;
    DECLARE match_found INT DEFAULT 0;
    DECLARE a VARCHAR(255) CHARSET utf8mb4;
    DECLARE ratio INT DEFAULT 0;
    DECLARE cur1 CURSOR FOR SELECT `values` FROM tmpValues;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
 
    OPEN cur1;
 
    call split(title, ' ');
 
    read_loop: LOOP
        FETCH cur1 INTO a;
        IF done THEN
            LEAVE read_loop;
        END IF;
  select levenshtein_ratio(upper(a),upper(keyword)) into ratio;
        IF ratio > 80 THEN
  SET done = 1;
  SET match_found = 1;
        END IF;
       
    END LOOP read_loop;
 
    CLOSE cur1;
    return match_found;
 
END$$

 FUNCTION `levenshtein` (`s1` VARCHAR(255) CHARSET utf8mb4, `s2` VARCHAR(255) CHARSET utf8mb4) RETURNS INT(11) BEGIN
 DECLARE s1_len, s2_len, i, j, c, c_temp, cost INT;
 DECLARE s1_char CHAR CHARSET utf8mb4;
 DECLARE cv0, cv1 VARBINARY(256);
 
 SET s1_len = CHAR_LENGTH(s1), s2_len = CHAR_LENGTH(s2), cv1 = 0x00, j = 1, i = 1, c = 0;
 
 IF s1 = s2 THEN
      RETURN 0;
    ELSEIF s1_len = 0 THEN
      RETURN s2_len;
    ELSEIF s2_len = 0 THEN
      RETURN s1_len;
    ELSE
      WHILE j <= s2_len DO
        SET cv1 = CONCAT(cv1, UNHEX(HEX(j))), j = j + 1;
      END WHILE;
      WHILE i <= s1_len DO
        SET s1_char = SUBSTRING(s1, i, 1), c = i, cv0 = UNHEX(HEX(i)), j = 1;
        WHILE j <= s2_len DO
          SET c = c + 1;
          IF s1_char = SUBSTRING(s2, j, 1) THEN
            SET cost = 0; ELSE SET cost = 1;
          END IF;
          SET c_temp = CONV(HEX(SUBSTRING(cv1, j, 1)), 16, 10) + cost;
          IF c > c_temp THEN SET c = c_temp; END IF;
            SET c_temp = CONV(HEX(SUBSTRING(cv1, j+1, 1)), 16, 10) + 1;
            IF c > c_temp THEN
              SET c = c_temp;
            END IF;
            SET cv0 = CONCAT(cv0, UNHEX(HEX(c))), j = j + 1;
        END WHILE;
        SET cv1 = cv0, i = i + 1;
      END WHILE;
    END IF;
    RETURN c;
END$$

FUNCTION `levenshtein_ratio` (`s1` VARCHAR(255) CHARSET utf8mb4, `s2` VARCHAR(255) CHARSET utf8mb4) RETURNS INT(11) BEGIN
DECLARE s1_len, s2_len, max_len INT;
SET s1_len = LENGTH(s1), s2_len = LENGTH(s2);
IF s1_len > s2_len THEN
SET max_len = s1_len;
ELSE
SET max_len = s2_len;
END IF;
RETURN ROUND((1 - LEVENSHTEIN(s1, s2) / max_len) * 100);
END$$

DELIMITER ;

-- --------------------------------------------------------
