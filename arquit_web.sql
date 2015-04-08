/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : arquit_web

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-01-29 19:01:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ciudad`
-- ----------------------------
DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE `ciudad` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ciudad
-- ----------------------------
INSERT INTO `ciudad` VALUES ('0', 'san gil');
INSERT INTO `ciudad` VALUES ('1', 'socorro');

-- ----------------------------
-- Table structure for `insumos`
-- ----------------------------
DROP TABLE IF EXISTS `insumos`;
CREATE TABLE `insumos` (
  `Id_insu` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_insu`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of insumos
-- ----------------------------
INSERT INTO `insumos` VALUES ('2', 'CEMENTO');
INSERT INTO `insumos` VALUES ('3', 'ARENA GRUESA');
INSERT INTO `insumos` VALUES ('4', 'ARENA FINA');
INSERT INTO `insumos` VALUES ('5', 'H1');
INSERT INTO `insumos` VALUES ('6', 'H10');
INSERT INTO `insumos` VALUES ('7', 'H12');
INSERT INTO `insumos` VALUES ('8', 'H15');

-- ----------------------------
-- Table structure for `ins_med`
-- ----------------------------
DROP TABLE IF EXISTS `ins_med`;
CREATE TABLE `ins_med` (
  `Id_in_uni` int(11) NOT NULL AUTO_INCREMENT,
  `Id_insumo` int(11) DEFAULT NULL,
  `Id_unidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_in_uni`),
  KEY `Id_insumo` (`Id_insumo`),
  KEY `Id_unidad` (`Id_unidad`),
  KEY `Id_in_uni` (`Id_in_uni`),
  CONSTRAINT `ins_med_ibfk_1` FOREIGN KEY (`Id_insumo`) REFERENCES `insumos` (`Id_insu`),
  CONSTRAINT `ins_med_ibfk_2` FOREIGN KEY (`Id_unidad`) REFERENCES `u_medida` (`Id_med`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ins_med
-- ----------------------------
INSERT INTO `ins_med` VALUES ('7', '2', '8');
INSERT INTO `ins_med` VALUES ('8', '2', '9');
INSERT INTO `ins_med` VALUES ('9', '2', '10');
INSERT INTO `ins_med` VALUES ('10', '2', '11');
INSERT INTO `ins_med` VALUES ('11', '2', '12');

-- ----------------------------
-- Table structure for `marca`
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca` (
  `Id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id_marca`),
  UNIQUE KEY `Id_marca` (`Id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES ('1', 'ARGOS');
INSERT INTO `marca` VALUES ('2', 'CEMEX');
INSERT INTO `marca` VALUES ('3', 'BOYACA');
INSERT INTO `marca` VALUES ('4', 'TEQUENDAMA');
INSERT INTO `marca` VALUES ('5', 'PORTLAND');
INSERT INTO `marca` VALUES ('6', 'VERSALLES');
INSERT INTO `marca` VALUES ('7', 'BARICHARA');
INSERT INTO `marca` VALUES ('8', 'CURITI');
INSERT INTO `marca` VALUES ('9', 'GRUESA');
INSERT INTO `marca` VALUES ('10', 'FINA');

-- ----------------------------
-- Table structure for `marc_insumo`
-- ----------------------------
DROP TABLE IF EXISTS `marc_insumo`;
CREATE TABLE `marc_insumo` (
  `Id_mar_ins` int(11) NOT NULL AUTO_INCREMENT,
  `Id_insumo` int(11) DEFAULT NULL,
  `Id_marca` int(11) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Id_mar_ins`),
  UNIQUE KEY `Id_mar_ins` (`Id_mar_ins`),
  KEY `Id_insumo` (`Id_insumo`),
  KEY `Id_marca` (`Id_marca`),
  CONSTRAINT `marc_insumo_ibfk_1` FOREIGN KEY (`Id_insumo`) REFERENCES `insumos` (`Id_insu`),
  CONSTRAINT `marc_insumo_ibfk_2` FOREIGN KEY (`Id_marca`) REFERENCES `marca` (`Id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of marc_insumo
-- ----------------------------
INSERT INTO `marc_insumo` VALUES ('1', '2', '6', '23500');
INSERT INTO `marc_insumo` VALUES ('4', '3', '1', '60000');
INSERT INTO `marc_insumo` VALUES ('5', '4', '1', '55000');
INSERT INTO `marc_insumo` VALUES ('6', '5', '1', '850');
INSERT INTO `marc_insumo` VALUES ('7', '6', '1', '800');
INSERT INTO `marc_insumo` VALUES ('8', '7', '1', '800');
INSERT INTO `marc_insumo` VALUES ('9', '8', '1', '900');

-- ----------------------------
-- Table structure for `procesos`
-- ----------------------------
DROP TABLE IF EXISTS `procesos`;
CREATE TABLE `procesos` (
  `Id_procesos` int(11) NOT NULL,
  PRIMARY KEY (`Id_procesos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of procesos
-- ----------------------------

-- ----------------------------
-- Table structure for `usuario`
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(20) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `apellidos` varchar(60) DEFAULT NULL,
  `Prof` int(11) DEFAULT NULL,
  `login` varchar(40) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `email` text,
  `ciudad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `cedula` (`cedula`),
  KEY `ciudad` (`ciudad`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ciudad`) REFERENCES `ciudad` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('14', '1098768594', 'franky alexander Gutierrez', null, '4', 'fgutiro', '123', '3214367117', 'franky_guti@hotmail.com', null);
INSERT INTO `usuario` VALUES ('16', '11009879678', 'ivan ', null, '3', 'ivancho', '123', '3123446754', 'franky_guti@hotmail.com', '0');
INSERT INTO `usuario` VALUES ('17', '1231232424', 'natalia', 'mendez', '2', 'namendez', '456', '321232342423', 'namendez@misena.edu.co', '0');
INSERT INTO `usuario` VALUES ('18', 'fasdfas', 'fasdfas', 'fasdfas', '2', 'fafsda', '123', 'dfasdf', 'fasdf', '0');
INSERT INTO `usuario` VALUES ('19', '120230492304', 'Jhon Do santos', 'Moreira', '4', 'santosanonimus', 'nomelase', '310234234235', 'anonymus2014@hotmail.com', '0');

-- ----------------------------
-- Table structure for `u_medida`
-- ----------------------------
DROP TABLE IF EXISTS `u_medida`;
CREATE TABLE `u_medida` (
  `Id_med` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`Id_med`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_medida
-- ----------------------------
INSERT INTO `u_medida` VALUES ('1', 'KILOS');
INSERT INTO `u_medida` VALUES ('2', 'MTS');
INSERT INTO `u_medida` VALUES ('3', 'CMTS');
INSERT INTO `u_medida` VALUES ('4', 'LBR');
INSERT INTO `u_medida` VALUES ('5', 'LTS');
INSERT INTO `u_medida` VALUES ('6', 'MLTS');
INSERT INTO `u_medida` VALUES ('7', 'UND');
INSERT INTO `u_medida` VALUES ('8', 'H7');
INSERT INTO `u_medida` VALUES ('9', 'H10');
INSERT INTO `u_medida` VALUES ('10', 'H12');
INSERT INTO `u_medida` VALUES ('11', 'H15');
INSERT INTO `u_medida` VALUES ('12', 'T1');
INSERT INTO `u_medida` VALUES ('13', 'TEMOSA');

-- ----------------------------
-- Procedure structure for `Calculo_Muro`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Calculo_Muro`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Calculo_Muro`(IN `COD_LADRILLO` int,IN `CAN_LADRILLO` int,IN `AREA` float,IN `COD_ARENA_G` int,IN `COD_ARENA_F` int,IN `COD_CEMENTO` int,OUT `H_CAN_LADRILLOS` float,OUT `H_CAN_VALDES` int,OUT `H_CAN_CEMENTOS` float,OUT `H_PRE_VALDES` float,OUT `H_PRE_CEMENTOS` float)
BEGIN

  DECLARE PRECIO_L DECIMAL(10);
  DECLARE PRECIO_C DECIMAL(10);
  DECLARE PRECIO_AG DECIMAL(10);
  DECLARE PRECIO_AF DECIMAL(10);
  DECLARE CAN_ARENA_G DECIMAL (10);
  DECLARE CAN_ARENA_F DECIMAL (10);
  DECLARE KILO_CEMENTO DECIMAL (10);

  
  DECLARE NOMBRE VARCHAR(50);	


  SELECT ms.PRECIO, S.Nombre FROM marc_insumo ms INNER JOIN insumos s ON ms.Id_insumo = s.Id_insu 
  WHERE Id_insumo = COD_LADRILLO INTO PRECIO_L,NOMBRE;
  SELECT PRECIO FROM marc_insumo WHERE Id_insumo = COD_CEMENTO INTO PRECIO_C;
  SELECT PRECIO FROM marc_insumo WHERE Id_insumo = COD_ARENA_G INTO PRECIO_AG;
  SELECT PRECIO FROM marc_insumo WHERE Id_insumo = COD_ARENA_F INTO PRECIO_AF;

  SET H_CAN_LADRILLOS = CAN_LADRILLO * AREA;

  IF NOMBRE = 'T1' THEN
    SET CAN_ARENA_G = 0;
    SET CAN_ARENA_F = 12*AREA;
  ELSE
    SET CAN_ARENA_G = 3*AREA;
    SET CAN_ARENA_F = 1*AREA;
  END IF;
  
IF NOMBRE = 'T1' THEN 
     SET KILO_CEMENTO = 37.5; 
  END IF;
  IF NOMBRE = 'H10' THEN 
    SET KILO_CEMENTO = 12.5;
  END IF;
  IF NOMBRE = 'H12' THEN 
    SET KILO_CEMENTO = 18;
  END IF;
  IF NOMBRE = 'H15' THEN 
    SET KILO_CEMENTO = 25;
  END IF;
  

  SET H_CAN_VALDES = CAN_ARENA_G + CAN_ARENA_F;
  SET H_CAN_CEMENTOS = AREA*KILO_CEMENTO;
  SET H_PRE_VALDES = (AREA*((CAN_ARENA_G*(PRECIO_AG/60))+(CAN_ARENA_F*(PRECIO_AF/60))));
  SET H_PRE_CEMENTOS = H_CAN_CEMENTOS * (PRECIO_C/50);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Calculo_Panete`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Calculo_Panete`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Calculo_Panete`(IN `can_m` int,IN `cod_ce` int,IN `cod_ar` int)
BEGIN
	
  DECLARE precio_c DECIMAL(10);
  DECLARE precio_a DECIMAL(10);
  
  DECLARE cem_ent FLOAT;
  DECLARE ar_ent FLOAT;
  DECLARE precio_cal_c FLOAT;
  DECLARE precio_cal_a FLOAT;


  select precio from marc_insumo where id_insu = cod_ce into precio_c;  
  select precio from marc_insumo where id_insu = cod_ar into precio_a;
  
  set cem_ent = ((can_m*50)/6);
  set ar_ent = ((can_m*18)/6);
  set precio_cal_c = (precio_c/50) * cem_ent;
  set precio_cal_a = (precio_a/90) * ar_ent; 
 
  select cem_ent, ar_ent, precio_cal_c, precio_cal_a;

END
;;
DELIMITER ;
