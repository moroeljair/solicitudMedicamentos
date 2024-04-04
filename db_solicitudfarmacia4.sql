-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2024 a las 18:01:53
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_solicitudfarmacia4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_solicitud`
--

CREATE TABLE `detalle_solicitud` (
  `ID_DETALLE` int(11) NOT NULL,
  `COD_PRODUCTO` int(11) NOT NULL,
  `ID_SOLICITUD` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_solicitud`
--

INSERT INTO `detalle_solicitud` (`ID_DETALLE`, `COD_PRODUCTO`, `ID_SOLICITUD`, `CANTIDAD`) VALUES
(28, 342, 25, 2),
(29, 343, 25, 2),
(30, 346, 26, 2),
(31, 356, 26, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_solicitud`
--

CREATE TABLE `estado_solicitud` (
  `ID_ESTADO_SOLICITUD` int(11) NOT NULL,
  `DESCRIPCION_ESTADO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_solicitud`
--

INSERT INTO `estado_solicitud` (`ID_ESTADO_SOLICITUD`, `DESCRIPCION_ESTADO`) VALUES
(1, 'Petición enviada a farmacia'),
(2, 'Petición por retirar'),
(3, 'Petición retirada de farmacia'),
(4, 'Petición rechaza por parte de farmacia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_clinico`
--

CREATE TABLE `historial_clinico` (
  `CORREO` varchar(50) NOT NULL,
  `HISTORIAL_CLINICO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial_clinico`
--

INSERT INTO `historial_clinico` (`CORREO`, `HISTORIAL_CLINICO`) VALUES
('cliente@gmail.com', 'A23'),
('jaircliente@gmail.com', 'A11'),
('jairmorocho99@gmail.com', '112205');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `COD_PRODUCTO` int(11) NOT NULL,
  `NOMBRE_PRODUCTO` varchar(250) NOT NULL,
  `DESCRIPCION` varchar(3000) DEFAULT NULL,
  `STOCK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`COD_PRODUCTO`, `NOMBRE_PRODUCTO`, `DESCRIPCION`, `STOCK`) VALUES
(342, 'Cethapil loción limpiadora ', 'Limpiador líquido, brinda una limpieza profunda sin resecar ni irritar la piel, manteniéndola suave y tersa.', 15),
(343, 'Crema Pond´s Rejuveness 50 G Tarro', 'La crema antiarrugas Pond´s Rejuveness desarrollada con una fórmula avanzada que activa la firmeza y ayuda a reducir la aparición de arrugas de afuera hacia dentro, para una piel firme y joven por fuera.', 13),
(344, 'Crema anti-edad Cicatricure', ' Ayuda a reducir y prevenir líneas de expresión, bolsas, arrugas y ojeras gradualmente. ', 25),
(345, 'La roche Posay Retinol B3 Serum', 'Concentrado anti-arrugas que regenera y unifica la textura de la piel, incluso para pieles sensibles.', 6),
(346, 'Crema Active Repair Institut Esthederm ', 'Crema Corrección de Arrugas Active Repair reestructura y regenera intensamente la piel a la vez que proporciona luminosidad y brillo duraderos', 10),
(347, 'Bassa Velvet Sunscreen Face Color Bloq Solar ', 'Revolucionario bloqueador solar facial en gel que cuenta con tecnología segunda piel, una capa de protección invisible, con textura aterciopelada, no grasosa, de rápida absorción y excelente esparcibilidad', 3),
(348, 'Crema La Roche Posay Redermic Hyalu', 'Redermic C combina un 5% de Vitamina C pura, un ingrediente activo líder en antienvejecimiento, y la Madecasosida, un ingrediente activo purificado al 95% reconocido por sus propiedades reparadoras de la piel, para intensificar la síntesis de las fibras de relleno y de sostén de la piel', 16),
(349, 'Crema Avène Physiolift Contorno De Ojos Antiedad Frasco 15 Ml Frasco', 'Rellena las arrugas y retensa la piel alrededor del contorno de los ojos.', 19),
(350, 'Crema Eucerin Anti-Manchas 30 Ml Tubo Dual Serum Facial Eucerin anti-pigment', 'Ayuda a reducir las manchas de pigmentación de la piel', 12),
(351, 'Protector Solar La Roche Posay Anthelios Anti Pigmentación Spf 50', 'Protección solar dermatológica enriquecida con Procerad. Muy alta protección. Amplio espectro. Sin perfume. Para rostro y zonas expuestas. Muy alta protección', 20),
(352, 'Nivea Crema Manos Q10 Anti Age', 'Crema de manos antiarrugas con Coenzima Q10 y Filtros UV que previene y reduce los primeros signos del envejecimiento dejando las manos suaves y cuidadas.', 32),
(353, 'Protector Solar Photoderm Max Spf 100 Frasco', ' La crema fotoprotectora máxima que estimula los sistemas de autodefensa de la piel', 18),
(354, 'Intensivo Hialurónico Mascarilla Institut Esthederm', 'Mascarilla hialurónica intensiva, deshidratación intensa, arrugas, tirantez. Hidrata profundamente; las arrugas y las líneas de deshidratación se suavizan.', 10),
(355, 'Hydrance Avene Aqua Gel', 'Hidrata,calma y detoxifica', 21),
(356, 'Corrector Pigmentbio', 'Textura gel crema ligera y envolvente, de rápida absorción. Brinda 8 horas de hidratación, el pigmentbio c-concentrate elimina las células con altas concentraciones de melanina, reduce la intensidad y tamaño de las marcas existentes y suaviza la textura de la piel dándole intensidad.', 25),
(357, 'Mascarilla Exfoliante Clarificante Osmoclean Institut Esthederm', 'Macarilla clarificante pulidora exfoliante, sin granos. El primer producto que combina el poder limpiador de una rica mascarilla en crema y un exfoliante sin granos con un efecto suave que aclara y unifica el cutis. La piel está purificada, limpia y lista para recibir tratamientos.', 5),
(358, 'LINEZOLIDA 600 MG CON REV CT BL AL PLAS OPC X 10', 'Linezolid es un antibiótico del grupo de las oxazolidinonas que actúa impidiendo el crecimiento de determinadas bacterias (gérmenes) que causan infecciones.', 12),
(359, 'Amoxicilina Normon 500 mg', 'Amoxicilina Normon es un antibiótico. El principio activo es amoxicilina. Este pertenece a un grupo de medicamentos denominados “penicilinas”.', 25),
(360, 'ZYVOX 600 MG CON REV CT BL AL PLAS PVC OPC X 10', 'Zyvoxid está indicado para el tratamiento de la neumonía nosocomial y de la neumonía adquirida en la comunidad en adultos, cuando se tenga la certeza o se sospeche que estén causadas por bacterias Gram-positivas sensibles a linezolid.', 41),
(361, 'LYNOZ 2 MG/ML SOL INFUS IV CX 1 ENV X BOLS PLAS TRANS SISTEMA CERRADO X 300 ML', 'Antibacteriano, inhibe la síntesis proteica bacteriana por unión al ribosoma y bloqueo de la translación.', 32),
(362, 'DERMAZINA 10 MG/G CREM VAG CT BG PLAS OPC X 30 G + 6 APLICACIONES', 'Es un antibiótico del grupo de las sulfamidas y clorhexidina es un desinfectante que potencia la acción antimicrobiana de la sulfadiazina.', 21),
(363, 'NOVADERM 5 MG/G + 5 MG/G CREM VAG CT BG AL X 40 G + 8 APLICACIÓN', 'Crema vaginal indicada para la cauterización del cuello uterino ', 25),
(364, 'ACETATO DE CLOSTEBOL + SULFATO DE NEOMICINA 5 MG/G + 5 MG/G CREM VAG CT BG AL X 45 G + 8 APLICACIÓN', 'La crema vaginal de acetato de clostebol + sulfato de neomicina está indicada para el tratamiento local después de la cauterización del cuello uterino .', 12),
(365, 'TEICOPLANINA 200 MG PO LIOF SOL INY IV/IM CX 10 FA VD TRANS X 15 ML', 'Teicoplanina es un antibiótico glicopéptido similar a la Vancomicina, pero con acción mas duradera. Puede ser administrada en forma intramuscular como intravenosa', 32),
(366, 'TYGACIL 50 MG PO LIOF INY CT 10 FA VD INC', 'Tygacil está indicado en adultos y en niños a partir de ocho años de edad para el tratamiento de las siguientes infecciones ', 12),
(367, 'UROCTRINA 80 MG + 400 MG + 50 MG CON REV CT BL AL PLAS INC X 20', 'Sistema genitourinario y hormonas sexuales', 65),
(368, 'BIO-C 1 G CON EFEV CT TB PLAS X 10', 'La sustancia del remedio Bio-c es el ÁCIDO ASCÓRBICO ', 25),
(369, 'REDOXÓN 2 G CON EFEV CT TB PLAST X 10', 'Es una fórmula de alta potencia que contiene 10 vitaminas y minerales* para ayudar a mantener su sistema inmunológico', 35),
(370, 'CEBION 2 G CON EFEV EST CT TB PLAS X 10', 'Antioxidante. Cofactor en numerosos sistemas enzimáticos debido a su potencial redox', 12),
(371, 'CENEVIT 2 G CON EFEV CT TB PLAS X 10 (SABOR NARANJA)', 'Vitamina C sabor naranja 10 tabletas efervescentes', 16),
(372, 'VITAMINA C MÉDICA 500 MG CON CT BL AL PLAS LAR X 20', '500 mg comprimidos masticables. Ácido Ascórbico (Vitamina C)', 18),
(373, 'Neurobión 200MG', 'Comprimido recubierto de Vitamina B1, Vitamina B6 y/o B12 100 mg+200 mg+0.2 mg', 54),
(374, 'NEO QUÍMICA VITAMINA B1 300 MG CON REV CT BL AL PLAS INC X 30', 'La vitamina B1 es un fármaco indicado para tratar y suprimir la deficiencia de vitamina B1 en el organismo . Su carencia se asocia con síntomas como falta de apetito, debilidad, irritabilidad y cambios cardíacos y neurológicos.', 42),
(375, 'VITAUM 300 MG CON REV CT BL AL PVC X 30', 'sustancia del remedio Vitaum es el CLORHIDRATO DE TIAMINA', 21),
(376, 'Dolo Neurobion Lidocaína Ampollas', 'Ampolla de Clorhidrato de Lidocaína, Clorhidrato de Piridoxina y Clorhidrato de Tiamina.', 12),
(377, 'Dolo Neurobión Forte Unidad', 'Tableta de diclofenaco, tiamina, piridoxina y cianocobalamina.', 7),
(378, 'SANY D 5000 UI CON REV CT BL AL PLAS OPC X 30', 'Medicamento básico de vitamina D3 (colecalciferol), indicado para pacientes que presentan insuficiencia y deficiencia de vitamina D.', 8),
(379, 'DPREV 50000 UI CON REV CT BL AL PLAS OPC X 8', 'DPREV es un medicamento a base de colecalciferol (vitamina D3), indicado para pacientes con insuficiencia y deficiencia de vitamina D.', 16),
(380, 'SOF D 50000 UI TAPÓN GEL MOLE CT BL AL PLAS TRANS X 4', 'SOF D es un fármaco a base de vitamina D3 (colecalciferol), indicado para la prevención y tratamiento auxiliar de la osteoporosis', 42),
(381, 'SANY D 50000 UI CON REV CT BL AL PLAS OPC X 4', 'medicamento básico de vitamina D3 (colecalciferol), indicado para pacientes que presentan insuficiencia y deficiencia de vitamina D.', 41),
(382, 'Farma D Mag 2000 Ui Unidad', 'Cada CÁPSULA BLANDA de 2000 UI contiene: Vitamina D3 (1.000.000 UI/g) 2,0 mg', 55),
(383, 'Dolo Neurobión Forte Unidad', 'Tableta de diclofenaco, tiamina, piridoxina y cianocobalamina.', 64),
(384, 'Dolo Neurobion Grageas', 'Gragea de Diclofenaco Sódico, Vitamina B1 (Tiamina), Vitamina B12, Vitamina B6 (Piridoxina).', 53),
(385, 'Ampollas Dexabion 3 Ml Caja', 'Caja con una jeringa y aguja.', 46),
(386, 'Ferro-B Complex Folic Lamosan Unidad', 'Tabletas recubiertas con suplemento de hierro, ácido fólico y vitaminas del complejo B.', 28),
(387, 'Recom-B Liquicaps Unidad', 'Para el buen funcionamiento del sistema nervioso (sueño relajado, entusiasmo, buena memoria). Para el buen funcionamiento cardiovascular y protección contra los efectos del estrés, contra infecciones y alergias, contra defectos congénitos. Para prevenir o corregir la anemia. Para el mantenimiento sano de piel y uñas.', 32),
(388, 'CLORHIDRATO DE TRAMADOL 50 MG CAP GEL DURO CT BL AL PLAS AMB X 10', 'Hidrocloruro de tramadol, el principio activo de Tramadol Aurovitas, es un analgésico de tipo opioide que actúa sobre el sistema nervioso central.', 12),
(389, 'TYFLEN 500 MG CON CT BL AL PLAS TRANS X 200', 'La sustancia del medicamento Tyflen es PARACETAMOL', 25),
(390, 'TYFLEN 500 MG CON CT BL AL PLAS TRANS X 20', 'La sustancia del medicamento Tyflen es PARACETAMOL', 41),
(391, 'PARACETAMOL 750 MG CON REV CT BL AL PLAS TRANS X 200', 'Para reducir y aliviar la fiebre dolor temporal de leve a moderado, como: dolor asociado con resfriados común, dolor de cabeza, dolor de cuerpo, dolor de muelas, dolor de espalda, dolores musculares, dolor leve asociado con la artritis y los calambres menstruales.', 32),
(392, 'Femen Forte 400 Mg Unidad', 'Capsula de femen Forte de 400mg de Ibuprofeno.', 25),
(393, 'CETOPROFENO 25 MG/G GEL CT BG AL X 30 G', 'Disminución de la síntesis de prostaglandinas mediante la inhibición de la vía de la ciclooxigenasa.', 43),
(394, 'CETOFÉNIDO 25 MG/G GEL CT BG AL X 30 G', 'Disminución de la síntesis de prostaglandinas mediante la inhibición de la vía de la ciclooxigenasa.', 28),
(395, 'OMEPRAZOL (OMEZZOL 20 MG CAP X 10)', 'Inhibe la secreción de ácido en el estómago. Se une a la bomba de protones en la célula parietal gástrica', 13),
(396, 'OXYPYNAL 20 MG CON REV LIB PROL CT BL AL AL ??X 14', 'para el tratamiento del dolor moderado a severo, cuando se requiere la administración continua de un analgésico, las 24 horas del día, por un período prolongado de tiempo.', 32),
(397, 'Femen 200 Mg Unidad', 'Cápsula Blanda de Ibuprofeno 200 mg.', 58),
(398, 'Aquilea Sueño 0.55 G Unidad', 'Comprimidos de Melatonina, Velriana, Pasiflora,Amapola 1.95 mg/ 50 mg/ 100 mg/ 100 mg', 21),
(399, 'Ansiolife Calm Green Life 60Ml Gotero', 'Ansiolife Calm Green Life 60ml gotero', 16),
(400, 'ALPRAZOLAM 0.5 MG CON CT BL AL PLAS OPC X 30', 'Es un medicamento tranquilizante (ansiolíticos); pertenece al grupo de las benzodiazepinas. Este medicamento está indicado en el tratamiento de estados de ansiedad generalizada, ansiedad asociada a síntomas de depresión y en el tratamiento de trastornos por angustia con o sin agorafobia (fobia a espacios abiertos muy llenos de gente).', 25),
(401, 'Neurexan Caja', 'Passiflora incarnata D2 0,6 mg; Avena sativa D2 0,6 mg; Coffea arabica D12 0,6 mg; Zincum isovalerianicum D4 0,6 mg. Excipientes: Estearato de magnesio, lactosa. Elaborado conforme a las normas de la Farmacopea Homeopática Alemana (HAB).', 43),
(402, 'SOMALIUM 2.5 MG/ML SOL O CT FR PLAS OPC GOT X 20 ML', 'Está indicado para la ansiedad, la tensión y otras dolencias somáticas o psicológicas asociadas con síndrome de ansiedad También está indicado para uso adyuvante en el tratamiento de la ansiedad y la agitación.', 35),
(403, 'BROMAZEPAM 3 MG CON CT BL AL PLAS TRANS X 30', 'indicado para la ansiedad, la tensión y otras dolencias físicas o psicológicas asociadas con síndrome de ansiedad También está indicado como coadyuvante en el tratamiento de la ansiedad y la agitación. Asociado con afecciones psiquiátricas, como trastornos del estado de ánimo', 17),
(404, 'Alprazolam Alter 0,50 mg comprimidos EFG', 'Alprazolam Alter pertenece a un grupo de medicamentos llamados tranquilizantes (ansiolíticos) derivados del compuesto llamado benzodiazepina, que actúan sobre la ansiedad, la tensión psíquica y las crisis de angustia.', 25),
(405, 'SULPAN 1 MG + 25 MG CAP GEL DURA CT BL AL PLAS TRANS X 20', 'Está indicado para el tratamiento de pacientes que presenten síntomas de ansiedad, tensión, excitación, insomnio, tristeza, depresión e inhibición psicomotora.', 34),
(406, 'Diazepam Normon 5MG ', 'Facilita la unión del GABA a su receptor y aumenta su actividad. Actúa sobre el sistema límbico, tálamo e hipotálamo.', 32),
(407, 'CLORHIDRATO DE BUPROPIÓN 150 MG CON REV LIB PROL CT BL AL AL ??X 61', 'indicado en el tratamiento de episodios de depresión mayor.', 34),
(408, 'Ezentius 20 Mg ', 'Está destinado al tratamiento de la depresión en su fase inicial y al tratamiento de mantenimiento para la prevención de las recidivas, trastornos de ansiedad. Antidepresivo.', 53),
(409, 'Lexapro 10 Mg ', 'Trastornos depresivos mayores. Tratamiento de los trastornos de pánico con o sin agorafobia. Tratamiento de los trastornos de ansiedad generalizada. Tratamiento de los desórdenes de ansiedad social (fobia social). Tratamiento del trastorno obsesivo compulsivo', 15),
(410, 'Fapris 100 Mg', 'Tratamiento del trastorno depresivo mayor.', 32),
(411, 'Novo Humorap 10 Mg', 'indicado para el tratamiento de: Trastorno depresivo mayor (según DSM-IV), tanto inicial como de mantenimiento para evitar la recaída. Trastorno de angustia (trastornos de pánico) con o sin agorafobia (según DSM-IV). Fobia social (según DSM-IV). Trastorno de ansiedad generalizada (según DSM-IV). Trastorno obsesivo-compulsivo (según DSM-IV).', 19),
(412, 'Sertralina 50 Mg', 'indicada como antidepresivo y en tratamiento del trastorno obsesivo compulsivo y en el trastorno de pánico.', 23),
(413, 'Serolux 50 Mg', 'Episodios depresivos mayores. Prevención de reaparición de episodios depresivos mayores.  Trastorno obsesivo-compulsivo.  Trastorno de angustia, con o sin agorafobia, trastorno de ansiedad social y trastorno por estrés postraumático.', 26),
(414, 'Fluoxetina Mintlab 20 G', 'Indicado en episodios depresivos mayores, trastorno obsesivo-compulsivo, bulimia nerviosa (complemento a psicoterapia), episodios depresivos de moderados a graves, si no hay respuesta a la terapia psicológica después de 4 a 6 sesiones.', 11),
(415, 'Paxil 25 Mg', 'Indicado para Episodio depresivo mayor, trastorno obsesivo compulsivo, trastorno de angustia con y sin agorafobia, trastorno de ansiedad social/fobia social', 8),
(416, 'Prozac Eli 20 Mg', 'Indicado para Episodios depresivos mayores.  Trastorno obsesivo-compulsivo.  Bulimia nerviosa.  Episodios depresivos de moderados a graves.', 25),
(417, 'Intensivo Vitamina C Crema Institut Esthederm 50 Ml Unidad', 'Gel - Crema intensiva de vitamina C, manchas oscuras, falta de luminosidad, pérdida de firmeza. Evita la aparición de nuevas manchas oscuras, la piel se alisa, se mejora la uniformidad del tono. Textura gel-crema ultraligera y confortable. Probado bajo control dermatológico.', 3),
(418, 'Parches Lift&Repair Institut Esthederm Contorno De Ojos Caja', 'Parches de elevación y reparación de contorno de ojos tratamientos completos de múltiples acciones: hinchazón, ojeras, flacidez y marcas de fatiga.', 5),
(419, 'Mascarilla Lift&Repair Repulpante Instantánea Institut Esthederm 50 Ml Unidad', 'Máscarilla rellenado instantanea rellena y levanta instantáneamente para\n\nPiel radiante y juvenil \"sin arrugas\". Suavizada, hidratada y tersa, la piel luce radiantemente bella.', 100),
(420, 'Serum Avène A-Oxitive 30 Ml Frasco', 'A-Oxitive es un potente sérum antioxidante con acción anti-edad. Su innovador mecanismo de acción libera Vitaminas C y E a lo largo del día, a partir de las Pre-moléculas de Vitaminas C y E que se vuelven puras y activas sólo al entrar en contacto y de acuerdo a la necesidad de su piel.', 6),
(421, 'Queratol Crema Hidratante 200 G Tubo', 'Crema hidratante Urea 10% 200 mg.', 5),
(422, 'Unguento Dérmico Dermabiótico Saval 15 G Tubo', 'Unguento de Polimixima B y Bacitracina 15 G.', 11),
(423, 'Agua Termal Con Protector Solar Avène Spf50 200 Ml Spray', 'Agua Termal on protector solar Avène SPF50 200 ML en Spray. ', 10),
(424, 'Humectante Cetaphil Ultra 226 G Tubo', 'Loción corporal especialmente formulada para proporcionar una hidratación intensa diaria a las pieles muy secas y sensibles.', 8),
(425, 'Discrom Control Neoretin Gelcream 40 Ml Tubo', 'Crema de día despigmentante con factor de protección solar de 40 ml.', 7),
(426, 'Protector Solar Photoderm Cover Touch Bioderma Spf 50+ 40 G Unidad', 'PHOTODERM COVER TOUCH SPF50+ 40 G: Protector solar mineral de alta cobertura, control del brillo.', 4),
(427, 'Ensure Advance Vainilla 900 G Tarro', 'Nutrición Especializada. Contiene HMB (Beta-Hidroxy-Beta-Metilbutirato), proteína, HMB, vitaminas y minerales. Libre de lactosa y gluten. Para preparar una porción de 230 ml, sirve 190 ml de agua fría o a temperatura ambiente en un vaso y adiciona gradualmente 6 medidas de polvo al ras (cucharada medidora incluida en la lata). Revuelve hasta disolver el polvo completamente.', 14),
(428, 'Pediasure Vainilla 1600 G Tarro', 'PediaSure satisface las necesidades diarias de proteínas, vitaminas y minerales. Puede utilizarse como suplemento alimentario o como única fuente de alimentación. Cuando se toma el número correcto de raciones, proporciona el 100% de la cantidad diaria recomendada (CDR) de proteínas, vitaminas y minerales para niños de entre 1 y 10 años de edad.', 10),
(429, 'Curamed Tutti Frutti ', 'Tabletas masticables para la garganta, Calostro + Vitamina C. Alivia la garganta irritada, evita la infección de la mucosa, fortalece el sistema inmunológico.', 15),
(430, 'Chupete 90 G', 'Chupetes de vitamina C', 21),
(431, 'Pharmaton 29.25 G ', 'Para estados de agotamiento (ej. : causados por el estrés), fatiga, sensación de debilidad, disminución de la concentración, también como disminución en la alerta mental. Para nutrición deficiente o mal equilibrada ', 34),
(432, 'Chupete Pectina + Vitamina C Bee Farma Cereza/Uva', 'Acción protectora sobre la garganta irritada.', 21),
(433, 'Beralclausii 5 Ml', 'Prevención, tratamiento de la disbiosis intestinal de diversa etiología. Reduce la intensidad y frecuencia de diarreas. Coadyuvante al tratamiento', 31),
(434, 'Ton Was 10 Ml ', 'Suplemento energético bajo condiciones normales o de estrés. En estados de convalecencia y en períodos de intensa actividad: exámenes, deportes, estrés; estados de fatiga, cansancio, decaimiento. Protección de anemias y anorexia.', 26),
(435, 'Pharmaton 50+', 'Pharmaton® 50 Plus es una fórmula completa y equilibrada con vitaminas, minerales esenciales y ácidos grasos Omega-3 (EPA y DHA), que ha sido especialmente desarrollada para cubrir las necesidades nutricionales específicas del organismo a partir de los 50 años, y para contribuir a compensar ligeras carencias causadas por dietas desequilibradas o restrictivas.', 18),
(436, 'Oxímetro Drive Pulso Unidad', 'Oxímetro de pulso Drive para niños y adultos.  Pantalla LED de visualización múltiple y fácil de leer.  Muestra SpO2 y pulso. ', 5),
(437, 'Termometro Digital Scanmed Dmt- 437 Unidad', 'Se puede utilizar para medir la temperatura corporal. El termómetro está diseñado con la tecnología más actualizada.', 20),
(438, 'Zapatones Desechables Unidad', 'Zapatones Desechables Unidad', 21),
(439, 'Mascarilla Para Nebulización Prodimeda Unidad', 'Para administración de medicamentos como: broncodilatadores, antiinflamatorios, mucoliticos o combinados.', 22),
(440, 'Medias No Varix T.V.P Paquete', 'Medias para varices', 120),
(441, 'Catéter Nipro #18 Unidad', 'Catéter elaborado en poliuretano unidad', 280),
(442, 'Pato Plástico Prodimeda Unidad', 'Instrumento médico para la micción de pacientes varones.', 20),
(443, 'Nebulizador Con Compresor Elite Omron Unidad', 'Nebulizador con compresor silencioso.', 10),
(444, 'Equipo Venoclisis Safti Unidad', 'Equipo de venoclisis.', 10),
(445, 'Balanza Omron Con Medidor Mano Pie Unidad', 'Balanza control corporal Premium.', 14),
(446, 'Farma D Mag 2000 Ui', 'Tratamiento del déficit de vitamina D: raquitismo, osteomalacia.\nPrevención del deficit de vitamina D en pacientes con alto riesgo. Como coadyuvante para el tratamiento específico de la osteoporosis en pacientes con déficit de vitamina D o en riesgo de insuficiencia de vitamina D o con ingestión inadecuada de vitamina D y/o Ca con alimentos.', 12),
(447, 'Ferrum Hausmann 5 Ml Ampollas Bebibles', 'Tratamiento de la anemia por deficiencia de hierro. Suplementación de hierro en lactantes, Embarazo y Lactancia.', 12),
(448, 'Gestavit Dha Vitamina', 'Complemento multivitamínico prenatal. Prevención y tratamiento de las deficiencias de hierro y ácido fólico, durante el embarazo, el período de lactancia y otros estados de anemia y como suplemento hematínico durante la infancia', 15),
(449, 'Maddre Immuvit Dha Polvo Chocolate 400 G', 'Brinda mayor cantidad de DHA, ácido fólico, proteínas, aminoácidos esenciales, vitaminas, minerales, calcio, hierro, zinc, entre otros, necesarios para complementar los requerimientos propios de estas etapas de pre gestación, gestación, lactancia, tratmiento de anemia durante el embarazo.', 2),
(450, 'Vitamina C Triple C 1000 Mg', 'Mantiene huesos y articulaciones fuertes. Suplemento dirigido a adultos y niños a partir de los 12 años. Triple C Forte con Vitamina C, Vitamina D3 y Zinc. Ayuda al mantenimiento normal del sistema inmunológico. Potente Antioxidante. +Vitamina D3 + Zinc', 12),
(451, 'Immuvit Plus Q10', 'Tratamiento para la rinitis, sinusitis, alergias y procesos post operatorios nasales. Congestión nasal y para la limpieza de la nariz', 47),
(452, 'Velnatal 1 G', 'Multivitamínico recomendado en embarazo y lactancia.', 6),
(453, 'Supradyn Energy 35.73 G', 'La fórmula multivitamínica y multimineral única de los comprimidos Supradyn® está diseñada para combatir la fatiga y cubrir posibles carencias nutricionales para que puedas disfrutar de tu vitalidad, fuerza y salud durante todo el día. ', 9),
(454, 'Emulsión Scott Naranja 400 Ml', 'Estados en que se requiera mayor aporte de vit. A y D, Ca y fósforo como crecimiento, dentición, Embarazo, Lactancia, mala nutrición, menopausia y senectud. Deficiencia de vit. A y D, Ca y fosforo como raquitismo, hipocalcemia, osteoporosis, hipovitaminosis A y D.', 19),
(455, 'Gasa Cureband Antiadherente Esteril 7.5/7.5/2 Cm Sobres', '1 Sobre con Gasa Estéril de 7.5 * 7.5 * 2 cm.', 28),
(456, 'Algodón Sana 25 G Unidad', 'Algodón hidrófilo.  Celulosa Natural Cultivada no proveniente de la Tala de Árboles. Empacado en Zig zag.  ', 23),
(457, '\nCinta Adhesiva Nexcare Steri-Strip Unidad', 'Cinta Adhesiva Nexcare Steri-Strip.', 32),
(458, 'Agua Oxigenada Laturi 10 Vo 100 Cc Frasco', 'Agua Oxigenada Laturi 10 Vo 100 Cc', 10),
(459, 'Alcohol Antiséptico Fybeca 500 Ml Spray', '\nAlcohol Antiséptico 500 Ml', 15),
(460, 'Esparadrapo Leukoplast Impermeable Caja', 'Esparadrapo Leukoplast Impermeable Caja', 20),
(461, 'Vendas Wata Algodón Herenco 4 Pulgadas Unidad', 'Vendas Wata de algodón no adhesiva de 4 pulgadas.', 21),
(462, 'Gasa Sana Hidrófila Estéril 1 Yarda Paquete', 'Rollo de gasa hidrófila estéril 1 yarda.', 15),
(463, 'Curitas Cureband Venditas Standard Unidad', 'Curitas venditas Standart.', 30),
(464, 'Jeringa Vanjerin 5 Cc 21 G Unidad', 'Jeringas descartables 5ml Luer lock tamaño 21x1-1/2.', 32),
(465, 'CODEISAN 1,26MG/ML 250ML JARABE', 'El fosfato de codeína es una sal hidrosoluble de codeína. La codeína calma la tos (antitusígeno), por lo que se utiliza en el tratamiento sintomático de la tos improductiva', 25),
(466, 'EFFERALGAN PEDIATRICO 150MG/5ML 90ML JARABE', 'indicado para el tratamiento sintomático del dolor ocasional leve o moderado y estados febriles, en niños de 4 a 32 kg (aproximadamente, desde 1 mes hasta 10 años).', 10),
(467, 'Tussolvina Forte Menta 120 Ml', 'Tratamiento de la congestión e inflamación originada por la tos seca, tos con flema o tos irritativa (tos alérgica), acompaña a los estados gripales, tos nocturna, tos aguda o crónica de cualquier causa, tratamiento coadyuvante en cuadros alérgicos como: Rinitis.', 5),
(468, 'Abrilar 200 Ml', 'Afecciones broncopulmonares con secreciones o tos seca irritativa.', 6),
(469, 'Umbral Infantil 105 Mg', 'Alivio sintomático de dolor leve o moderado; dolores asociados a gripes y resfriados, dolores de garganta, dolores de cabeza, dolores dentales, reacciones post-vacunas y estados febriles.', 8),
(470, 'Eucamiel 240 Ml', 'Eucamiel jarabe para la tos: antiséptico de las vías respiratorias, balsámico broncodilatador, expectorante mucolítico, indicado para la fiebre, tos, flema, gripe, resfrío, asma , bronquitis, faringitis, rinitis, sinusitis, traqueítis.', 12),
(471, 'Muxol Adulto 30 Mg', 'Alivio de la tos productiva, (con secreción o flema), por su acción broncosecretolitica, está indicado en bronquitis aguda y crónica, asma bronquial, rinitis, sinusitis y rinitis seca. Profilaxis pre y post operat. de complicaciones broncopulmonares.', 20),
(472, 'Tempra 160 Mg 5 Ml', 'Oral o rectal: fiebre; dolor de cualquier etiología de intensidad leve o moderado.', 21),
(473, 'Bisolvon Adultos 8 Mg 120 Ml', 'Terapia secretolítica en enfermedades broncopulmonares agudas y crónicas asociadas a secreción mucosa anormal y deterioro del transporte mucoso.', 15),
(474, 'Guaifenesina 125 Ml', 'Alivio de la tos y para facilitar la expulsión del exceso de mocos y flemas en catarros y gripes para adultos y niños ? 6 años.', 12),
(475, 'Enterogermina 5 Ml', 'Tratamiento y profilaxis de las alteraciones de la flora bacteriana intestinal y de la disvitaminosis endógena subsiguiente. Tratamiento para la recuperación de la flora bacteriana intestinal alterada durante el curso de un tratamiento con agentes antibióticos o quimioterápicos. Desórdenes agudos y crónicos en lactantes, atribuibles a intoxicaciones o alteraciones de la flora bacteriana intestinal y disvitaminosis', 5),
(476, 'Ivermin 6 Mg', 'Oral. Puede deglutirse o disolverse en no menos de una cucharada de agua. En el tto. de ectoparasitosis causadas por Sarcoptes scabiei y Pediculus humanus, así como en parasitosis causadas por nematodos (Ascaris lumbricoides, Enterobius vermicularis, Trichuris trichiura, Strongyloides stercoralis, Onchocerca volvulus, Gnathostoma spinigerum y larva migrans)', 12),
(477, 'Azitromicina Medigener 500 Mg', 'Oral. Infección por germen sensible: sinusitis bacteriana aguda y otitis media bacteriana aguda (diagnosticadas adecuadamente); faringitis, amigdalitis; exacerbación aguda de bronquitis crónica (diagnosticada adecuadamente); neumonía adquirida en la comunidad de leve a moderadamente grave; infecciones de piel y tejidos blandos de gravedad de leve a moderada', 6),
(478, 'Fluimucil 600 Mg', 'Infecciones respiratorias como EPOC, enfisema, sinusitis, pacientes alérgicos, como antioxidantes en diferentes enfermedades. Prevención de nefrotoxicidad en exámenes con medio de contraste.', 20),
(479, 'Buscapina 10 Mg', 'Espasmos del tracto gastrointestinal, biliar y genitourinario; discinesia biliar.', 14),
(480, 'Glucovance 500 / 2.5 Mg', 'Tratamiento inicial de la diabetes mellitus tipo 2 (terapia de primera línea). En pacientes obesos cuya hiperglucemia no se controla adecuadamente con dieta y ejercicio. En estos casos GLUCOVANCE ha logrado un mejor control que la monoterapia.  Terapia de segunda línea: GLUCOVANCE está indicado como terapia de segunda línea cuando el tratamiento inicial con dieta y ejercicio o con sulfonilurea o metformina solas no logra el control glucémico adecuado en pacientes con diabetes tipo 2.  Como terapia de reemplazo de un tratamiento previo con la combinación de metformina y una sulfonilurea.', 5),
(481, 'Janumet Msd 50 Mg/500 Mg', 'En adultos con diabetes mellitus tipo 2: Como adyuvante a la dieta y el ejercicio para mejorar el control glucémico en pacientes que no estén adecuadamente controlados. Como adyuvante a la dieta y el ejercicio en combinación con una sulfonilurea. Como adyuvante a la dieta y el ejercicio junto con un agonista PPAR-gamma (una tiazolidindiona). Como terapia adicional a insulina (terapia de combinación triple).', 12),
(482, 'Glibenclamida Mintlab 5 Mg', 'Diabetes mellitus tipo II cuando no pueda controlarse mediante dieta, ejercicio físico y pérdida de peso. Coadyuvante de insulina en diabetes insulinodependiente.', 5),
(483, 'Insulina Regular Humulin 10 Ml', 'diabetes mellitus. ', 20),
(484, 'Glicem 5 Mg', 'Diabetes mellitus tipo II cuando no pueda controlarse mediante dieta, ejercicio físico y pérdida de peso. Coadyuvante de insulina en diabetes insulinodependiente.', 12),
(485, 'Amaryl M 2 Mg', 'Hipoglucemiante oral sinérgico. Diabetes no insulino-dependiente que no puede controlarse satisfactoriamente solo con dieta. Diabetes no insulino-dependiente en especial cuando se asocia a obesidad. Diabetes no insulino-dependiente asociada a la falta de reacción favorable de otros ttos. con hipoglucemiantes orales.', 14),
(486, 'Kombiglyze Xr 2.5 Mg', 'En adultos con diabetes mellitus tipo 2, junto con la dieta y el ejercicio, para mejorar el control glucémico: En pacientes no controlados adecuadamente con la dosis máxima tolerada de metformina. En combinación con otros medicamentos para el tratamiento de la diabetes, incluyendo insulina, en pacientes no controlados adecuadamente con metformina y estos medicamentos. En pacientes que estén recibiendo ya tratamiento con la combinación de saxagliptina y metformina en comprimidos distintos.', 21),
(487, 'Diamicron Mr 30 Mg', 'Diabetes mellitus tipo II, cuando la dieta, ejercicio físico y reducción de peso por sí solos no son adecuados.', 3),
(488, 'Janumet Msd 850 Mg', 'Como terapia inicial en pacientes con diabetes mellitus tipo II, para mejorar el control glicémico cuando la dieta y ejercicios no proporcionan el control glicémico adecuado. Como complemento, para pacientes que siguen un tratamiento con metformina o sitagliptina sola o en pacientes que ya están siendo tratados con una combinación de sitagliptina y metformina. También en combinación con una sulfonilurea.', 21),
(489, 'Galvus Met 50 Mg/1000 Mg', 'Diabetes mellitus tipo 2: En adultos sin control suficiente de la glucemia con la dosis máxima tolerada de metformina en monoterapia por vía oral o que ya están en tratamiento con esta combinación en formas individuales. En combinación con una sulfonilurea (terapia triple), como coadyuvante a dieta y ejercicio, en adultos controlados inadecuadamente con metformina y una sulfonilurea. En combinación con insulina (terapia triple), como coadyuvante a dieta y ejercicio, en adultos no controlados adecuadamente con insulina y metformina.', 22),
(490, 'Toallas Sanitarias Nosotras Básicas 42 Unidad', 'Son mas gruesitas, pero igualmente cómodas. Su cubierta tela tipo algodón además de tener los beneficios de los extractos de algodón, es muy suave con tu piel.', 30),
(491, 'Protectores Carefree Diarios Con Perfume Paquete', 'Paquete de 15 protectores Íntimos Carefree.', 10),
(492, 'Jabón Íntimo Lactibon Fem Espuma Fresh 200 Ml Frasco', 'Jabón íntimo en espuma. 3. 5PH. Solución. Limpiador para la higiene diaria femenina.', 20),
(493, 'Desodorante Rexona Antibacterial Invisible 50 Ml Roll On', 'Desodorante rexona roll on women ap antibac invisible 12x50 ml', 15),
(494, 'Copa Menstrual Divacup Talla Mediana Modelo 1 Unidad', 'La mejor copa menstrual reutilizable del mundo. Tienes entre 19 y 30 años, y tu flujo es regular. Úsala hasta por 12 horas. 100% silicona de grado médico. ¡Solo lo mejor para tu vagina. Sin químicos, plásticos ni tinturas.', 10),
(495, 'Pañales Nappis Fisher-Price P Paquete', 'Pañales con cubierta hipoalergénica, sistema autoajustable fit & flex. Ajuste más cómodo y máxima absorción. Talla Pequeño de 3, 5 a 6 kg', 13),
(496, 'Cepillo Dental Oral B Whitening Therapy Purification 2 Un Paquete', 'Blanquea y purifica delicadamente tus dientes con la tecnología del Cepillo Dental Oral-B Whitening Theraphy Purification. Con cerdas extra suaves y 20 veces más delgadas que un cepillo de cerdas planas. Con cabeza compacta para áreas difíciles de alcanzar', 32),
(497, 'Toallas Sanitarias Nocturnas Nosotras Buenas Noches Paquete', 'Nosotras Buenas Noches, 8 cm más larga y más ancha atrás que una toalla normal para mayor seguridad mientras duermes.', 17),
(498, 'Preservativos Five Steel Caja', 'Preservativos listos para cualquier momento.', 20),
(499, 'Preservativos Five Skin 5 Ultra Sensitivos Caja', 'Preservativos Five Skin 5 Ultra Sensitivos Metal Box más Lubricante.', 15),
(500, 'Multiflora 6.81 G Unidad', 'Capsulas de probióticos y Vitaminas C, E, A de 0.227 g c/u', 12),
(501, 'Diaren 100 Ml Frasco', 'Cada 5 mL de suspensión contiene: Nifuroxazida: 200 mg, Atapulgita: 500 mg, Excipientes c.s. Frasco 100 ml Suspensión.', 5),
(502, 'Ciruelax Forte Unidad', 'Comprimido con extracto seco de hojas de Cassia Angustifolia Vahl 125 mg.', 19),
(503, 'Duphalac 15 Ml Sobres', 'Sobre de Lactulosa 66,7 g/100 ml. Cada sobre de 15 ml contiene 10 g de Lactulosa.', 21),
(504, 'Ciruelax Té Laxante 1500 Mg Unidad', 'bolsa autofiltrante para infusión, Ciruelax.', 5),
(505, 'Leche De Magnesia Phillips Frasco 120 Ml', 'Frasco con leche de magnesia de 120 ml.', 7),
(506, 'Leche De Magnesia Mk 360 Ml Frasco', 'Cada 100 ml contiene: Hidróxido de magnesio 8.5 g. Vehículo cbp 100.0 ml.', 10),
(507, 'Plantaben 5 G Sobres', 'Para el tratamiento sintomático del estreñimiento. - En situaciones en las que sería deseable facilitar la deposición de las heces, por ejemplo en casos de deposiciones dolorosas tras cirugía rectal o anal, fisuras anales y hemorroides.', 17),
(508, 'Neolax Sobres', 'Estreñimiento crónico funcional, laxante', 21),
(509, 'Dulcolax 5 Mg Unidad', '1 Comprimido de Dulcolax de 5mg de Picosulfato Sódico.', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `ID_SOLICITUD` int(11) NOT NULL,
  `HISTORIAL_CLINICO` varchar(100) NOT NULL,
  `NOMBRE_DOCTOR` varchar(120) NOT NULL,
  `CORREO` varchar(50) NOT NULL,
  `ID_ESTADO_SOLICITUD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`ID_SOLICITUD`, `HISTORIAL_CLINICO`, `NOMBRE_DOCTOR`, `CORREO`, `ID_ESTADO_SOLICITUD`) VALUES
(25, 'A10', 'Juan Montalvo', 'ejemplo@gmail.com', 1),
(26, 'A23', 'Jose Miguel', 'ejemplo@gmail.com', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE `tipo_producto` (
  `ID_TIPO_PRODUCTO` int(11) NOT NULL,
  `COD_PRODUCTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`ID_TIPO_PRODUCTO`, `COD_PRODUCTO`) VALUES
(59, 342),
(80, 343),
(0, 344),
(104, 345),
(10, 346),
(107, 347),
(66, 348),
(5, 349),
(0, 350),
(4, 351),
(76, 352),
(94, 353),
(27, 354),
(60, 355),
(61, 356),
(81, 357),
(16, 358),
(7, 359),
(16, 360),
(65, 361),
(11, 362),
(11, 363),
(11, 364),
(6, 365),
(6, 366),
(16, 367),
(37, 368),
(17, 369),
(17, 370),
(17, 371),
(37, 372),
(83, 373),
(26, 374),
(26, 375),
(34, 376),
(34, 377),
(21, 378),
(21, 379),
(21, 380),
(21, 381),
(56, 382),
(34, 377),
(34, 384),
(108, 385),
(99, 386),
(78, 387),
(28, 388),
(57, 389),
(57, 390),
(57, 391),
(44, 392),
(50, 393),
(50, 394),
(98, 395),
(24, 396),
(44, 397),
(95, 398),
(63, 399),
(39, 400),
(72, 401),
(39, 402),
(39, 403),
(114, 404),
(28, 405),
(87, 406),
(24, 407),
(111, 408),
(8, 409),
(8, 410),
(8, 411),
(8, 412),
(8, 413),
(54, 414),
(8, 415),
(54, 416),
(10, 417),
(64, 418),
(27, 419),
(5, 420),
(101, 421),
(96, 422),
(86, 423),
(58, 424),
(75, 425),
(4, 426),
(20, 427),
(20, 428),
(29, 429),
(12, 430),
(105, 431),
(102, 432),
(2, 433),
(53, 434),
(84, 435),
(32, 436),
(91, 437),
(3, 438),
(1, 439),
(82, 440),
(3, 441),
(1, 442),
(89, 443),
(31, 444),
(67, 445),
(56, 446),
(19, 447),
(19, 448),
(71, 449),
(85, 450),
(93, 451),
(79, 452),
(90, 453),
(100, 454),
(23, 455),
(35, 456),
(77, 457),
(103, 458),
(62, 459),
(42, 460),
(43, 461),
(23, 462),
(112, 463),
(109, 464),
(69, 465),
(38, 466),
(51, 467),
(106, 468),
(115, 469),
(55, 470),
(13, 471),
(2, 472),
(13, 473),
(15, 474),
(2, 475),
(41, 476),
(7, 477),
(97, 478),
(52, 479),
(40, 480),
(40, 481),
(116, 482),
(92, 483),
(116, 484),
(46, 485),
(40, 486),
(116, 487),
(40, 488),
(40, 489),
(45, 490),
(22, 491),
(68, 492),
(30, 493),
(70, 494),
(14, 495),
(33, 496),
(47, 497),
(18, 498),
(18, 499),
(12, 500),
(9, 501),
(25, 502),
(49, 503),
(74, 504),
(9, 505),
(9, 506),
(48, 507),
(73, 508),
(36, 509);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `ID_TIPO` int(11) NOT NULL,
  `NOMBRE_TIPO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`ID_TIPO`, `NOMBRE_TIPO`) VALUES
(1, 'Administrador'),
(2, 'Enfermer@'),
(3, 'Farmacéutic@'),
(4, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CORREO` varchar(50) NOT NULL,
  `CEDULA_RUC` char(15) NOT NULL,
  `NOMBRE_USUARIO` varchar(50) NOT NULL,
  `CLAVE_USUARIO` varchar(300) NOT NULL,
  `ID_TIPO` int(11) NOT NULL,
  `CIUDAD` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CORREO`, `CEDULA_RUC`, `NOMBRE_USUARIO`, `CLAVE_USUARIO`, `ID_TIPO`, `CIUDAD`) VALUES
('cliente@gmail.com', '1710543289', 'Juan Salgado Edu', '$2b$12$.fd4oA/vkeTYjvb1ETuBBuDoZvDDtOwr73zZ6TwKttPitoVhyT4wq', 4, 'Quito'),
('ejemplo2@gmail.com', '1725252541', 'Jose Jaramillo 22', '$2b$12$/46lwH2wmg2CzNNm4dzuX.zLQdQ3iWDtvkCDGFq7k8LTPr8sXymOy', 2, 'Quito'),
('ejemplo@gmail.com', '1767237538', 'Jair Alexis', '$2b$12$tuemlJ2tt5ROD9Z32ETmwe13JVHawOG7pMr6chyyUE2GPzoJaNHP.', 2, 'Quito'),
('enfermero@gmail.com', 'XXXXXXXXXX', 'Jose Salgado', '$2b$12$5XBw1XkJAvNFmyDaij1/0OlFDZrZsjsMgdQ4.eR4YrKEqJxUyw6RO', 3, 'XXXXXXXX'),
('jaircliente@gmail.com', '1710543289', 'Jair Cliente', '$2b$12$XHlK9PN6pGwb7aRiP5u11e8lWLhuv1zvdKqpE79g41PjLjJ7mAkre', 4, 'Quito'),
('jairmorocho99@gmail.com', '1723430573', 'Jair', '$2b$12$pyZGYZD7DaCnDZ9sDYrzXu5IXhbLvHjaYv5KjUXY.xHlopBNLgj0O', 4, 'Quito'),
('sebastian1@gmail.com', '1710542512', 'Sebastián Raza 22', '$2b$12$OqBpXinNFLvb0ufFHYhUUeS7SL1/i6v/cNA1nhTKN8PzWjaGQ2T9m', 1, 'Quito');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_solicitud`
--
ALTER TABLE `detalle_solicitud`
  ADD PRIMARY KEY (`ID_DETALLE`),
  ADD KEY `producto_detalle_venta_fk` (`COD_PRODUCTO`),
  ADD KEY `venta_detalle_venta_fk` (`ID_SOLICITUD`);

--
-- Indices de la tabla `estado_solicitud`
--
ALTER TABLE `estado_solicitud`
  ADD PRIMARY KEY (`ID_ESTADO_SOLICITUD`);

--
-- Indices de la tabla `historial_clinico`
--
ALTER TABLE `historial_clinico`
  ADD KEY `usuario_historial_clinico_fk` (`CORREO`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`COD_PRODUCTO`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`ID_SOLICITUD`),
  ADD KEY `estado_solicitud_solicitud_fk` (`ID_ESTADO_SOLICITUD`),
  ADD KEY `usuario_venta_fk` (`CORREO`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD KEY `producto_tipo_producto_fk` (`COD_PRODUCTO`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`ID_TIPO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CORREO`),
  ADD KEY `tipo_usuario_usuario_fk` (`ID_TIPO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_solicitud`
--
ALTER TABLE `detalle_solicitud`
  MODIFY `ID_DETALLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `COD_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `ID_SOLICITUD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_solicitud`
--
ALTER TABLE `detalle_solicitud`
  ADD CONSTRAINT `producto_detalle_venta_fk` FOREIGN KEY (`COD_PRODUCTO`) REFERENCES `producto` (`COD_PRODUCTO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `venta_detalle_venta_fk` FOREIGN KEY (`ID_SOLICITUD`) REFERENCES `solicitud` (`ID_SOLICITUD`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `historial_clinico`
--
ALTER TABLE `historial_clinico`
  ADD CONSTRAINT `usuario_historial_clinico_fk` FOREIGN KEY (`CORREO`) REFERENCES `usuario` (`CORREO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `estado_solicitud_solicitud_fk` FOREIGN KEY (`ID_ESTADO_SOLICITUD`) REFERENCES `estado_solicitud` (`ID_ESTADO_SOLICITUD`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_venta_fk` FOREIGN KEY (`CORREO`) REFERENCES `usuario` (`CORREO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD CONSTRAINT `producto_tipo_producto_fk` FOREIGN KEY (`COD_PRODUCTO`) REFERENCES `producto` (`COD_PRODUCTO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `tipo_usuario_usuario_fk` FOREIGN KEY (`ID_TIPO`) REFERENCES `tipo_usuario` (`ID_TIPO`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
