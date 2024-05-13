CREATE TABLE `data_platform_station_railway_line_data`
(
  `Station`                          int(16) NOT NULL,
  `RailwayLine`                      int(16) NOT NULL,
  `ValidityStartDate`                date NOT NULL,
  `ValidityEndDate`                  date NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `CreateUser`                       int(12) NOT NULL,
  `LastChangeUser`                   int(12) NOT NULL,
  `IsReleased`                       tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Station`, `RailwayLine`),

    CONSTRAINT `DPFMStationRailwayLineData_fk` FOREIGN KEY (`Station`) REFERENCES `data_platform_station_header_data` (`Station`),
    CONSTRAINT `DPFMStationRailwayLineDataRailwayLine_fk` FOREIGN KEY (`RailwayLine`) REFERENCES `data_platform_railway_line_header_data` (`RailwayLine`),
    CONSTRAINT `DPFMStationRailwayLineDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMStationRailwayLineDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
