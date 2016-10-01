--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: event_roster; Type: TABLE; Schema: public; Owner: tomscallon; Tablespace: 
--

CREATE TABLE event_roster (
    id character(20) NOT NULL,
    isu_id character varying(9) NOT NULL,
    net_id character varying(20) NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    chapter character varying(20) NOT NULL,
    gw_role character varying(7) DEFAULT ''::character varying NOT NULL,
    w_lipsync boolean DEFAULT false NOT NULL,
    w_general boolean DEFAULT false NOT NULL,
    technical boolean DEFAULT false NOT NULL,
    events text[] DEFAULT ARRAY[]::text[] NOT NULL
);


ALTER TABLE public.event_roster OWNER TO tomscallon;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: tomscallon; Tablespace: 
--

CREATE TABLE teams (
    chapter character varying(20) NOT NULL,
    team_name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO tomscallon;

--
-- Data for Name: event_roster; Type: TABLE DATA; Schema: public; Owner: tomscallon
--

COPY event_roster (id, isu_id, net_id, first_name, last_name, chapter, gw_role, w_lipsync, w_general, technical, events) FROM stdin;
3mqb4vdke1g8fd5vis8j	832782995	emmaax	Emma	Axtell	Alpha Chi Omega		f	f	f	{}
tyk79x668hfky1v3mzpm	634384779	cebelon	Claire	Belon	Alpha Chi Omega		f	f	f	{}
db8hye49qxhs74r2vv72	337699362	gmhembry	Garrett	Hembry	ACACIA		t	f	f	{"Lip Sync"}
ufw6jkihgu58k2ds8vlb	33961960	mholmes	Michael	Holmes	ACACIA		t	f	f	{"Lip Sync"}
vfr3yhpafu03x2rzgurs	96338242	jlwebb	Joseph	Webb	ACACIA		t	f	f	{"Lip Sync"}
bjtf9wu1til20a6fnqs4	40568556	lucho95	Luis	Catari	Adelante		t	f	f	{"Lip Sync"}
dlf549gp0raed4b6n6j2	230763568	mfernan	Minoru	Fernando	Adelante		t	f	f	{"Lip Sync","Educational Speaker"}
hitah2aq7g06zosnm1ru	446943497	kaylen	Kaylen	Anderson	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
kry1ayzsmdl3nboes3h5	285546285	kemp	Martin	Kemp	Adelante		t	f	f	{"Lip Sync"}
s906h7q25q4w7wzcifer	215969754	connorg	Connor	Gunderson	Adelante		t	f	f	{"Lip Sync"}
65nywduhd0ittga3d1dp	829075368	lstiens	Logan	Stiens	Adelante		f	f	f	{"Educational Speaker"}
3fb6ygvfgk8ym2voju5a	361271954	abenz	Alexandra	Benz	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
z1t7u43s4i2jjoro21cs	435687281	alkhamis	Alanoud	Alkhamis	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
80pugduo4yp2lzph83f5	848749902	kbrock	Kate	Brockschink	Alpha Chi Omega		f	f	f	{}
sopsathw1uauamxnv8t0	55684629	hrb	Hailey	Burkhardt	Alpha Chi Omega		f	f	f	{}
rtoz9gs2z6fsdfclhhre	746716971	ccarson	Chloe	Carson	Alpha Chi Omega		f	f	f	{}
r6hdj1v9a38oh5dk2yiq	677162486	Mcconley	Madison	Conley	Alpha Chi Omega		f	f	f	{}
7149dx0d1j8ptxzjrkbl	285565280	vpcooper	Vanessa	Cooper	Alpha Chi Omega		f	f	f	{}
3cksuvt02u9492jwenrq	853554726	cfculich	Caitlin	Culich	Alpha Chi Omega		f	f	f	{}
wfe90r9drbfnnq7g1uvc	264005742	neenad	Neena	Denne	Alpha Chi Omega		f	f	f	{}
k8385p5zoh1ymztmju8m	319617325	ydiallo	Yayekade	Diallo	Alpha Chi Omega		f	f	f	{}
7mlfgflkz9liv9b61jar	492265798	vjlehman	Vance	Lehman	ACACIA		t	f	f	{"Educational Speaker"}
1in0yne9h47siwckxx55	367312946	billdyke	William	Dyke	ACACIA		t	f	f	{"Educational Speaker"}
p7urfg73viszfxne8i4n	942314373	ndickson	Nolan	Dickson	ACACIA		t	f	f	{"Educational Speaker"}
15hfbrlxwnkzivb47xzy	620727135	hadams	Hannah	Adams	Alpha Chi Omega		t	f	f	{"Educational Speaker"}
8h1gs51kpb3tyn54n09y	279043825	mrjensen	Matthew	Jensen	Adelante		t	f	f	{"Educational Speaker","Lip Sync"}
m58tlfvxvmvw0w62su2s	642303721	wads	David	Wadsworth	Adelante		t	f	f	{"Educational Speaker","Lip Sync"}
nulbfqycesgobs9vl23c	719594876	dshields	Devin	Shields	ACACIA		f	t	f	{"Educational Speaker"}
gmdbcjabzhkwnmcw7vjo	436950538	mmhart	Matthew	Hart	ACACIA		f	t	f	{"Lip Sync"}
8pxje6gg6tmcnyc0ywc0	306990744	JBASS	Jack	Bass	ACACIA		f	t	f	{"Lip Sync"}
5o3vrk7ef7n0d3on0j2a	284082827	dpratt	Dylan	Pratt	ACACIA		f	t	f	{"Lip Sync"}
umerdk06n68tfdtx0gfj	123979923	willison	Riley	Willison	ACACIA		t	t	f	{"Lip Sync"}
pvh5b7fk79ki0z16nuv4	885969084	kchng	Keven	Chng	ACACIA		f	t	f	{"Lip Sync"}
l88v1mld09bcj3ocdicr	585083499	ecgibbs	Evan	Gibbs	Adelante		f	t	f	{"Lip Sync"}
khrqdbsc7tx2fzehyjd9	926082157	bzimm	Brendan	Zimmerman	ACACIA	Crew	f	t	f	{}
bd8ba12sw88v2rtjos1l	510032560	achutton	Avery	Hutton	Adelante		f	t	f	{"Educational Speaker"}
ca7cdjrnoce1s36yhi8i	145044900	afisher1	Adam	Fisher	Adelante		f	t	f	{"Educational Speaker"}
8s3fqbp1be2cz8fsbonc	573965420	cwa	Cole	Alexander	Adelante		f	t	f	{"Educational Speaker"}
h51fjp2lawu43tk06idu	617853236	timdee	Timothy	Dee	Adelante		f	t	f	{"Educational Speaker"}
7gqeyjw94jrdooyzduh4	144118975	rsugars	Randy	Sugars	Adelante		f	t	f	{"Educational Speaker"}
mwcb41jqw445khdlwye2	990691702	jjnoonan	Jacob	Noonan	Adelante		f	t	f	{"Educational Speaker"}
et9f3t2lpbnwdok4qrj1	426997595	rosplock	Benjamin	Rosplock	Adelante		f	t	f	{"Educational Speaker"}
m2axpkr5kd2b4fhd2s89	591051486	mstayner	Marc	Stayner	Adelante		f	t	f	{"Educational Speaker"}
uqppe8b4qes7pb1mio3f	418441087	agome377	Adalberto	Gomez	Adelante		f	t	f	{"Educational Speaker","Lip Sync"}
l7v2mmwes5jobd6umug5	437539167	cjhughes	Colton	Hughes	Adelante		f	t	f	{"Educational Speaker"}
cxjvnkjc0bsn26njm5jf	179113935	osuna323	Henry	Osuna	Adelante		f	t	f	{}
pt50qv9jsvd6x3z82a3o	762555794	holdeng	Holden	Greenberg	ACACIA		f	t	f	{}
drytzi8gkspvlg0fvr6z	553736183	dwg	David	Gardner	ACACIA		f	t	f	{}
uvxmadwmbcwrcygj1lsz	255052826	ajboeh	Alfred	Boeh	ACACIA		f	t	f	{}
626ncy36oaak96w0a8qv	772473702	griffing	Jordan	Griffing	ACACIA		f	t	f	{}
0gze49qbpyo2kmfy2b89	765403639	aditya	Aditya	Navale	ACACIA	Crew	f	t	f	{}
57iuavnklmju21bmu2fu	691057367	jadotts	Jessica	Dotts	Alpha Chi Omega		f	f	f	{}
0br8kdnsqpxicgpy6z29	722345624	agravrok	Anna	Gravrok	Alpha Chi Omega		f	f	f	{}
n8ql0x5992t2d9viwipu	819747061	behamand	Brooke	Hamand	Alpha Chi Omega		f	f	f	{}
n86szqvojuin3wbon49w	729914185	rock	Kyle	Rockwell	Adelante		f	t	f	{Volleyball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
t6os2hqvx3z5azi1gswf	422190805	cdcf	Christian	Chiang-Fung	Adelante		t	t	f	{"Lip Sync","Polar Bear Plunge"}
lv8qqy0gaie985aevo3o	416044629	wlauer	Wyatt	Lauer	ACACIA		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
af9ukq6vlhr84l9zi0g0	379073695	andrew95	Andrew	Martin	ACACIA		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
03s2i1ldfsigwncg64yf	12309297	kjschrad	Kenan	Schrad	Adelante		t	t	f	{"Educational Speaker","Lip Sync",Broomball}
yeayeg5vrfc2182o55c6	131334203	hattingk	Kaylynn	Hatting	Alpha Chi Omega		f	f	f	{}
7tro2r1mc35roctqt2jt	312189903	ahedrick	Alaina	Hedrick	Alpha Chi Omega		f	f	f	{}
nmr4w7fr53cm4m08rt7g	352441089	rholland	Riley	Holland	Alpha Chi Omega		f	f	f	{}
30uxct7oy5hhsb8n6hy4	267147881	rmhull	Rita	Hull	Alpha Chi Omega		f	f	f	{}
wr1b2e00xzbj8fldbrvb	647178532	jljensen	Jennifer	Jensen	Alpha Chi Omega		f	f	f	{}
on8ie6ernavxca707nnx	290408118	jkline	Jessica	Kline	Alpha Chi Omega		f	f	f	{}
9gmz0rnod52cp663nhfw	322796474	tmkresge	Taylor	Kresge	Alpha Chi Omega		f	f	f	{}
j3bulqmcklgpwhww8z2c	774085312	kubinski	Victoria	Kubinski	Alpha Chi Omega		f	f	f	{}
fiejdngb91ayzgnmnmql	65164099	katkuck	Kathryn	Kuckelman	Alpha Chi Omega		f	f	f	{}
pami8l75cx4sdn6mbdnh	428211784	gfmalik	Gia	Malik	Alpha Chi Omega		f	f	f	{}
rwm24subrkq57r99vyhs	342808494	ldmeyer	Leann	Meyer	Alpha Chi Omega		f	f	f	{}
p1di7wphij0tehbcq3qi	997141145	kmolgaar	Kristin	Molgaard	Alpha Chi Omega		f	f	f	{}
r6puv2ebxxov71czqorc	935770836	kemoore	Katymae	Moore	Alpha Chi Omega		f	f	f	{}
jn7vlcka8usn48ywfehl	79821742	hannahp1	Hannah	Petersen	Alpha Chi Omega		f	f	f	{}
pz96i05gp9g8t8bja0ik	718387670	ameyer16	Alyssa	Meyer	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
bhglhpfw6t48naadwugt	580647098	goodsite	Molly	Goodsite	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
u0i95yly4m2wmj7y9ps2	76025121	orgraue	Olivia	Graue	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
sad3j6cflx05ee6anua5	533705240	amkirk	Ashley	Kirkpatrick	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
jqjsheptmpbds1y8e71i	120669569	fontenot	Ashley	Fontenot	Alpha Chi Omega		t	f	f	{"Lip Sync","Educational Speaker"}
ov9jwc4jy9vfa3dowoft	460729289	breider	Marissa	Breider	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
wt7wt28qj3fxs7sweiu7	89024968	jesslync	Jesslyn	Carroll	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
esxzsvbj13gs1r6loviv	998801804	valen22	V.	Gomez-Aristizabal	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
69u8xz7vq8ajdtsb0w4u	494424987	cepower	Carolyn	Power	Alpha Chi Omega		f	f	f	{}
dyyvnmxrpthcvleo52ij	833851018	sreese	Sydney	Reese	Alpha Chi Omega		f	f	f	{}
fr8vds19aqb9lqcqbwpl	269535266	jschimek	Justina	Schimek	Alpha Chi Omega		f	f	f	{}
bsnsapr538wdqbzeufan	110056967	schuelke	Miranda	Schuelke	Alpha Chi Omega		f	f	f	{}
837tr9v1alr1njebpmgl	410904494	eshriver	Emily	Shriver	Alpha Chi Omega		f	f	f	{}
lkgly4e1qmoxlsa6vbnb	644942298	jsittler	Jacquelyn	Sittler	Alpha Chi Omega		f	f	f	{}
s8b3i7oo35vwqjw8ckzi	527643116	mstewart	Morgan	Stewart	Alpha Chi Omega		f	f	f	{}
heqoiuvenk88ga1tbs03	634298665	kstorm	Kaci-ann	Storm	Alpha Chi Omega		f	f	f	{}
471nf3x7u3bxo2onvj4z	694450757	bsweeney	Brenna	Sweeney	Alpha Chi Omega		f	f	f	{}
go4dxe855b112yi4n4lq	688818130	stephie	Stephanie	Swiatkiewicz	Alpha Chi Omega		f	f	f	{}
l8zffvqhxynxlvs0an1f	459990531	ntutley	Nicole	Utley	Alpha Chi Omega		f	f	f	{}
0v2mz85rlltbkgo8v49l	767159393	cvictor	Carrie	Victor	Alpha Chi Omega		f	f	f	{}
p028h6i6vige22h5lvzz	405539134	amvitosh	Abbey	Vitosh	Alpha Chi Omega		f	f	f	{}
w3c70t7wl63rlu2srm9w	67000934	katievoj	Katelyn	Vojahosky	Alpha Chi Omega		f	f	f	{}
9ce91zj9xyh4p2ew0scx	841432652	sallyb	Sally	Baker	Alpha Chi Omega		t	f	f	{}
j2w587fb5dtvb6ac328a	129906777	crbackes	Cortney	Backes	Alpha Chi Omega		t	f	f	{}
st0tm0vfmx55gy5vdm9z	490432962	amyc	Amy	Collins	Alpha Chi Omega		t	f	f	{}
vcpgzhomfkves60m762p	73456383	bnjobe	Brianna	Jobe	Alpha Chi Omega		t	f	f	{}
lvl6u11bm4xwpg2rvxlx	982743790	amaki	Amanda	Maki	Alpha Chi Omega		t	f	f	{}
ubxkr5udrv0rk8b89w3g	783109327	gruening	Caitlyn	Gruening	Alpha Chi Omega		f	t	f	{}
5yohin97ik7k8es9hcc4	215467252	dewilkie	Dylin	Wilkie	Adelante		f	t	f	{"Educational Speaker","Lip Sync"}
4vck58xev513tikrlnn4	496036601	bseb0907	Brooke	Bolam	Alpha Chi Omega		f	t	f	{"Educational Speaker"}
5xyn37nyrd5p1tgkv8jk	340345029	kmfeldt	Kasey	Feldt	Alpha Chi Omega		f	t	f	{Basketball}
g32368wlrnv39zugaf39	398932534	ecarver	Ellie	Carver	Alpha Chi Omega		f	t	f	{}
mqaywctdq30mvkdfhfdy	389410021	izgray	Isobel	Gray	Alpha Chi Omega		f	t	f	{}
3beul8ijg04zrx0wsgk3	201152980	ecaxtell	Elizabeth	Axtell	Alpha Chi Omega		f	t	f	{Basketball}
mmfynuzli96wtrxzt31t	597803246	alishah	Alisha	Humiston	Alpha Chi Omega		f	t	f	{}
9kn0dlgnbr1ipm6qlfxm	591690167	mccorey	Morgan	Corey	Alpha Chi Omega		f	t	f	{}
dthgsztx0an4rdg7izc1	813791999	krc2019	Kaitlyn	Coleman	Alpha Chi Omega		f	t	f	{"Educational Speaker"}
ykalww0x6jsdjfpmgffc	880814935	hannahb	Hannah	Buchanan	Alpha Chi Omega	Central	f	t	f	{}
fx3fpqklgfo5bjw1wwtx	152391239	ekgries	Emily	Gries	Alpha Chi Omega		f	t	f	{}
m9t367xxdsuz4seepm4q	704658955	carradus	Caitlyn	Carradus	Alpha Chi Omega		f	t	f	{"Educational Speaker"}
mbmvwebsdy8kyhky8miy	801824023	wertwijn	Caitlin	Wertwijn	Alpha Chi Omega		f	f	f	{}
n14ncu768o23bef11f09	683701018	mebode	Marissa	Bode	Alpha Delta Pi		f	f	f	{}
2snfrzeushhzxy03ex87	237421207	msboldt	McKenna	Boldt	Alpha Delta Pi		f	f	f	{}
79l8x89gfov931n4mzpg	101696595	mebraak	Mackenzie	Braak	Alpha Delta Pi		f	f	f	{}
qg34izbg832jnki83v5j	737184475	abravard	Abby	Bravard	Alpha Delta Pi		f	f	f	{}
5ud1fw436gi2ezxgc6tu	467074608	aefromm	Anna	Fromm	Alpha Chi Omega		f	t	f	{"Polar Bear Plunge"}
ia9lsd8nkdxr6wxt6lin	197503326	vcb	Victoria	Brown	Alpha Chi Omega		f	t	f	{Broomball}
dq3ho9l6y9l6sdez3jma	615456842	sjbailey	Sarah	Bailey	Alpha Chi Omega		f	t	f	{Broomball}
uyzp7szoxjkscxn4xoqp	784120337	cbrock	Courtney	Brockman	Alpha Delta Pi		f	f	f	{}
66a99yrfdfvwdlp23msc	650421772	kgbruce	Kathryn	Bruce	Alpha Delta Pi		f	f	f	{}
37b3mvmb2kkn9j4sv6k0	513757244	caitlyn	Caitlyn	Campbell	Alpha Delta Pi		f	f	f	{}
z1va2qrp9hqcw9zpooce	321197877	mbcrow	Montana	Crow	Alpha Delta Pi		f	f	f	{}
qkm5906544szi1b8rfno	342963456	bnpoage	Breanna	Poage	Alpha Chi Omega		t	f	f	{"Lip Sync"}
d9ci6skendh2nrb9514k	898342445	mreiland	Megan	Reiland	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
hbgxsy84nxtfy5svtz8m	685868239	juliapro	Julia	Protexter	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
kbbkrinsahfvqmcs5zti	112195083	meganc1	Megan	Carpenter	Alpha Delta Pi		f	f	f	{"Educational Speaker"}
5hko1kv70se0seac8t4z	958157224	kmp2977	Kayla	Pivec	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
tpf5yhqddyctb9153c2e	304253979	lmwelton	Lauren	Welton	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
lz4wtetzt0eajzgi8uez	868239392	ctesar	Christina	Tesar	Alpha Chi Omega		f	f	f	{}
dwudtpfg7pd6upood1h6	767632866	caitlina	Caitlin	Albrecht	Alpha Delta Pi		t	f	f	{"Lip Sync"}
iy4vmuqowcscm0ept9uv	856929098	eeager	Elizabeth	Eager	Alpha Delta Pi		f	f	f	{}
8rflpx6hxq4yfft8smcu	786011226	cetsche	Carah	Etscheidt	Alpha Delta Pi		f	f	f	{}
eyve64a2nrlrosfuc3bs	659988329	dngiles	Danielle	Giles	Alpha Delta Pi		f	f	f	{}
6hum9duau9uz6eh5hj3a	228316116	mgodinez	Mary	Godinez	Alpha Delta Pi		f	f	f	{}
muznq82jwda427wp0oe6	732920188	mariahg	Mariah	Griffith	Alpha Delta Pi		f	f	f	{}
fohgpq8lr9rliwphq46v	569540972	slholm	Sarah	Holm	Alpha Delta Pi		f	f	f	{}
tgbhcv9qz3oa9cuejbal	217588399	kjones	Kelsie	Jones	Alpha Delta Pi		f	f	f	{}
rnujsryp0fi98z4ropzv	584487935	ckkiepe	Clara	Kiepe	Alpha Delta Pi		f	f	f	{}
sbgjgsd3wxol59n2teo1	200494318	ckocek	Colette	Kocek	Alpha Delta Pi		f	f	f	{}
vuqzq2l1lvdsoznyw0lu	295723428	kelisk	Kendra	Liska	Alpha Delta Pi		f	f	f	{}
mhwmw6jc8uu3s3e0z38t	459023565	amelgard	Alexandra	Melgard	Alpha Delta Pi		f	f	f	{}
3v2dcj6q7mhn1cx3h4qm	430940510	jmeyer1	Jacqueline	Meyer	Alpha Delta Pi		f	f	f	{}
r6v6vjyardccdsc8wkht	955916962	andimo	Andrea	Morales	Alpha Delta Pi		f	f	f	{}
2rml30g5ozsv6yqgm6oq	180612432	lindsoll	Lindsay	Ollenburg	Alpha Delta Pi		f	f	f	{}
atb9rzjt1tu4bxxtahil	873146298	pinnell	Caitlin	Pinnell	Alpha Delta Pi		f	f	f	{}
jkw7dnf48fnzri1xjtsa	469359912	kkprice	Klarisa	Price	Alpha Delta Pi		f	f	f	{}
1ks3f2a8jshylq1bvv2c	233033828	awillson	Alison	Willson	Alpha Chi Omega		t	f	f	{}
cvw0bsckrpujxkro2non	341814473	saustin	Sabrina	Austin	Alpha Delta Pi		t	f	f	{"Educational Speaker"}
1sez1o3mi7lnnw4e519k	150373223	morhaley	Haley	Morris	Alpha Chi Omega		f	t	f	{}
4bmzmdvap5pj0quwm634	953823906	tepropst	Tenley	Propst	Alpha Chi Omega		f	t	f	{}
irulhfqa1dvuj7dkv6np	392993625	eamehle	Emily	Mehle	Alpha Chi Omega		f	t	f	{}
1dw83oqm38ou7ak5tr7p	839461651	pytleski	Logan	Pytleski	Alpha Chi Omega		f	t	f	{}
ge385lrg36imvwls6oq7	292776508	jralke	Jillian	Ralke	Alpha Chi Omega		f	t	f	{"Educational Speaker"}
cyh11wfxkbq1eg1bepol	102142040	lmtaylor	Lyndsey	Taylor	Alpha Chi Omega		f	t	f	{}
06213cf73cy6dywmruy8	199752553	emonthei	Emma	Monthei	Alpha Chi Omega		f	t	f	{}
qgqehbxcfxfql520sdm5	236969733	caraymon	Caitlin	Raymon	Alpha Chi Omega		f	t	f	{}
lp3l5hrcnjeeu6r1d843	618510893	ajjones	Aiden	Jones	Alpha Chi Omega		f	t	f	{}
yhixrd7raxs00575i3mb	160110951	tstanek	Tai	Stanek	Alpha Chi Omega		f	t	f	{}
zlahj8d5xihizbqk289d	650217568	mallorys	Mallory	Schultze	Alpha Chi Omega		f	t	f	{}
w1oe6h573x5h9y6fw9sv	969272331	njp	Natalie	Pellegrino	Alpha Chi Omega		t	t	f	{"Lip Sync"}
bbpq234aynnwqwcv4oi7	174959822	menelsen	Madelyn	Nelsen	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker"}
6pefs2nqj79mq1kirvfy	492242406	bloden	Brooke	Odendahl	Alpha Chi Omega		f	t	f	{"Educational Speaker"}
yoale1m11ov0d4bqsvqg	594601034	cgroehr	Courtney	Roehrich	Alpha Delta Pi		f	f	f	{}
kqpdytyeeuvq9qb9u40c	662691029	zescheve	Zoe	Scheve	Alpha Delta Pi		f	f	f	{}
0s1uz2wb5g8c6fjyhi3n	978790813	schnell1	Megan	Schnell	Alpha Delta Pi		f	f	f	{}
bgmxy50wegftsknjswrj	740973233	rschrodt	Rebecca	Schrodt	Alpha Delta Pi		f	f	f	{}
yhw3ir9uo1sfred7txof	223748525	csimmons	Cierra	Simmons	Alpha Delta Pi		f	f	f	{}
lpogstut9m489rcpsbui	741286569	hsnell	Heidi	Snell	Alpha Delta Pi		f	f	f	{}
jc7wmjv2fcjmqhdbapd3	840599783	salogan	Sidney	Logan	Alpha Chi Omega		f	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
hnbviyisokt29872e235	831583777	abischaf	Abigail	Schafer	Alpha Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
nl2wagcnknbfc4cxe6i3	388660272	kate	Kate	Kruse	Alpha Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
8k0zye2dgwszu5kwcl86	202174973	llarson	Lindsay	Larson	Alpha Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
2th21hbkukoq4chn6ebh	952014063	fkgoetz	Faith	Goetz	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
pt3lz030wyp9mdpv6idc	568050510	ahageman	Alexis	Hageman	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
3bb50lu796sqjfexqxkd	955478524	aerojas	Aileen	Rojas	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
148a1ltqrhjqxtxmno29	357126791	kmrettig	Kayla	Rettig	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
b7pir8vvasljem5kfn1d	701787086	mmaves	Mikayla	Maves	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
3klsy3c5ns2wgy93cmyi	875650799	milarsen	Michelle	Larsen	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
3ptmnl4qw9gaoe9jsv5s	381227847	sncurran	Sarah	Curran	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
jgyjfie0gx2amwudeybs	191722555	mjm1	Morgan	Miller	Alpha Delta Pi		f	f	f	{"Educational Speaker"}
0l1noojrgmpxwbb8kwmj	346180835	faye	Faye	Tunnicliffe	Alpha Delta Pi		f	f	f	{}
d6av6of5lvfhvis1m856	463402940	smwymore	Suzanna	Wymore	Alpha Delta Pi		f	f	f	{}
yq4ocki3g4bsye6wdisy	738874136	hmbailey	Hannah	Bailey	Alpha Gamma Delta		f	f	f	{}
6mvqlop3f5ijovkvr9lz	843589777	brandib	Brandi	Barrett	Alpha Gamma Delta		f	f	f	{}
2m3w58wl9y5qg6tsj8bm	225405180	laurenb	Lauren	Bennett	Alpha Gamma Delta		f	f	f	{}
14laukhhbd18f5q7pzlm	881058210	maborg	Marissa	Borgerding	Alpha Gamma Delta		f	f	f	{}
wbwas428yzc3go9m6kkr	382781427	elbray	Emily	Bray	Alpha Gamma Delta		f	f	f	{}
xp4tt1kag8kclulprwxc	294285012	cottrgra	Grace	Cottrell	Alpha Gamma Delta		f	f	f	{}
x89ntpu3b2fshqeeid9p	379376024	rreffa	Rachel	Effa	Alpha Gamma Delta		f	f	f	{}
f6b63qygy3bw5o6l99j6	702705003	rrfatz	Rebecca	Fatz	Alpha Gamma Delta		f	f	f	{}
chbxtirf2hnni8gnjo8g	214494304	mfitz	Molly	Fitzpatrick	Alpha Gamma Delta		f	f	f	{}
yuu57bkmokor9xljgd16	77821744	hayleyf	Hayley	Folkerts	Alpha Gamma Delta		f	f	f	{}
a51mydzapte7nyr09853	83888805	afrancis	Abby	Francis	Alpha Gamma Delta		f	f	f	{}
kvjmcc6rg5pr88i51fuk	948531624	hampton	Sydni	Hampton	Alpha Gamma Delta		f	f	f	{}
596wofrzsj0nt44gqwfm	750774048	nlhansen	Nichelle	Hansen	Alpha Gamma Delta		f	f	f	{}
w22shsexu4x4zcs7hdf9	813086306	saknabel	Sarah	Knabel	Alpha Gamma Delta		f	f	f	{}
wwew4m93vti5drq32z5y	557617060	nknoepke	Nicole	Knoepke	Alpha Gamma Delta		f	f	f	{}
l8arqh5zyez762iiinl5	669952283	kmlahaye	Katelynn	Lahaye	Alpha Gamma Delta		f	f	f	{}
wasbboqqvav1s3w2rl15	764918154	mtmccrt2	Morgan	McCarthy	Alpha Delta Pi		f	t	f	{}
6nhcbjxqnb6q2v873efz	115744629	pagelh14	Hannah	Pagel	Alpha Delta Pi		t	f	f	{"Educational Speaker","Lip Sync"}
p9k7rcmc6kexw2ipf8ll	203227081	ccolvill	Carly	Colville	Alpha Delta Pi		t	f	f	{"Educational Speaker"}
fbyhf4awo0xbccl1lb8j	731907176	lkimball	Lauren	Kimball	Alpha Delta Pi		t	t	f	{"Educational Speaker",Treds,Basketball}
6pbs3ddn3hk5olgh7b1w	998056059	mhelgren	Molly	Helgren	Alpha Delta Pi		t	f	f	{}
tnc3hh7hpocgn24uygwe	882805924	lgehring	Lauren	Gehring	Alpha Delta Pi		t	f	f	{"Lip Sync"}
5dpw6m2k9l2ydazh8n93	664195564	sparsa	Sivani	Parsa	Alpha Delta Pi		t	f	f	{}
wiqixl8um3w4c2nh3lnz	678243590	truhl	Toni	Ruhl	Alpha Delta Pi		t	f	f	{}
ij8gygznv5lbjoimid41	374565191	ameekins	Abigail	Meekins	Alpha Delta Pi		t	f	f	{}
edm4hksqbq1rei28sfu5	667670028	mjtrepa	Melanie	Trepa	Alpha Chi Omega		f	t	f	{}
wjytr4tbctsjmtft6hos	181376219	ksbaker	Kallie	Baker	Alpha Delta Pi		f	t	f	{}
if849j23s55hodj7hrd7	693110418	ksroller	Kaitlin	Roller	Alpha Delta Pi		f	t	f	{}
f7lsjzslbsx3za955bjm	695309615	arenholz	Morgan	Arenholz	Alpha Delta Pi		f	t	f	{}
jzp0cvthibpmra1dod54	293940700	aaarness	Arial	Aarness	Alpha Delta Pi		f	t	f	{"Educational Speaker"}
jtgrpvc0htw9tj2zbmrq	316563278	emjensen	Elizabeth	Jensen	Alpha Delta Pi		f	t	f	{}
abmtvgf3ua49t54fqr8y	363626263	jellias	Jessica	Ellias	Alpha Delta Pi		f	t	f	{}
sad7elumllcx5n34xhp1	978634657	rhagg	Rachel	Hagg	Alpha Delta Pi		f	t	f	{"Lip Sync"}
nmrujugeia7w0jcas9u4	966873972	mwilwerd	Margo	Wilwerding	Alpha Chi Omega	Crew	f	t	f	{}
awha28syiq82qld1fax1	896084189	marissaj	Marissa	Ferguson	Alpha Delta Pi		f	t	f	{}
lfzzdc5vnjt910fqzhpq	437357921	mmlewis	Mackenzie	Lewis	Alpha Gamma Delta		f	f	f	{}
w7nw41l5pqyr233ucplq	86788773	mmelero	Mariana	Melero	Alpha Gamma Delta		f	f	f	{}
i56aqo1p5f9ctvzjl85p	707423749	ewartj21	Jordan	Ewart	Alpha Gamma Delta		f	f	f	{"Educational Speaker"}
g5rg2t8jxslj79pdafun	178588434	dybowski	Emily	Dybowski	Alpha Gamma Delta		f	f	f	{"Educational Speaker"}
tz13pwgdltbbq6l4fose	664713117	alexxa	Alexxa	Blair	Alpha Gamma Delta		f	f	f	{"Educational Speaker"}
pyjy0wn73bgjg4u1y76a	216026811	mnelsen	Miranda	Nelsen	Alpha Gamma Delta		f	f	f	{}
oux30s7rclr0iqq6y501	331793462	rneubaum	Roxanne	Neubaum	Alpha Gamma Delta		f	f	f	{}
gffja1izc4xeevvi37ti	949082167	arianar	Ariana	Radosevich	Alpha Gamma Delta		f	f	f	{}
ywn2xoxgqxiv1djbmvl5	192259067	cjs2	Cassandra	Schneider	Alpha Gamma Delta		f	f	f	{}
s19rbm0sxrh1m7h2vqlx	306807501	mgfisher	Madison	Fisher	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
tkgula7z8u8i324fddmp	87690603	Jcraig	Jessica	Craig	Alpha Delta Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
qeazhkihnfeaucrsf1pr	370123754	memarek	Macy	Marek	Alpha Delta Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
gw3mmqmu56ll6vebihhb	920497605	mkiepura	Madeleine	Kiepura	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
05gwz7cy8otd4s74g7f1	543288746	aadieter	Abby	Dieter	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
3grolh6m5kdh4orr1kzp	304876599	scochran	Shelbey	Cochran	Alpha Delta Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
uje8kk8ca6lbdcol4o83	867178312	ragilman	Rachel	Gilman	Alpha Delta Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
qptsyjbykjtgqr7vvt83	592191600	adelais	Adelai	Swanson	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
anojvi1d99m1uzyon33h	979495517	edrummy	Emily	Drummy	Alpha Delta Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
ehlquzi6rbhfqidr3b5l	256604348	anniew	Annie	Wallace	Alpha Delta Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
fe8wwvvpidnzk5am8bdy	5516540	ashleyv	Ashley	Vaughan	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
0zg3pbja6y5g1djpml3p	898943045	barbieri	Laura	Barbieri	Alpha Gamma Delta		f	t	f	{"Polar Bear Plunge"}
p7oe6qrtfyooiin6yf6c	615578964	shireman	Blaire	Shireman	Alpha Gamma Delta		f	f	f	{}
zbacr20mul7mcjlburlz	619930311	mnshuey	Madison	Shuey	Alpha Gamma Delta		f	f	f	{}
3xxilb011pa1p7atsof7	908793886	snidasam	Samantha	Snidarich	Alpha Gamma Delta		f	f	f	{}
on9by8i61g13679jbpmj	224607383	msprunk	Morgan	Sprunk	Alpha Gamma Delta		f	f	f	{}
f4f7euwl6ofnwdnywc8b	31456425	asquires	Ashley	Squires	Alpha Gamma Delta		f	f	f	{}
xktu9yhqv23ava8b4zm5	337207892	bryliew	Brylie	Wiedmaier	Alpha Gamma Delta		f	f	f	{}
9mcj249hwrzafnxgit7f	649333752	rosiez	Rosie	Zbaracki	Alpha Gamma Delta		f	f	f	{}
ouk15z95r4wm7grkysep	114772658	efziemke	Emma	Ziemke	Alpha Gamma Delta		f	f	f	{}
ccgpvsczhjlh7p5fj38g	205716511	allen427	Cody	Allen	Alpha Gamma Rho		f	f	f	{}
f02dze8ts3j89oic39lx	456776320	bashland	Benjamin	Ashland	Alpha Gamma Rho		f	f	f	{}
zzgvch14kktebc1p4gpa	450313864	abenning	Andrew	Benning	Alpha Gamma Rho		f	f	f	{}
5bzhqi28v46xw687a6np	612363752	shaneb	Shane	Bockenstedt	Alpha Gamma Rho		f	f	f	{}
uvp05vpgtpdptarevzj9	331657357	wforsyth	Wyatt	Forsyth	Alpha Gamma Rho	Crew	f	f	f	{}
8cz0044c5yjfw17qdh5m	305683378	csgent	Cale	Gent	Alpha Gamma Rho		f	f	f	{}
xwuac8vwso1e015ir5r4	872376505	delmerg	Delmer	Goettsch	Alpha Gamma Rho		f	f	f	{}
c69dboh8n5gmrz55ojmc	886470585	jessprz	Jessica	Przybylski	Alpha Gamma Delta		f	f	f	{"Educational Speaker"}
4kzp8dp9h5n6fxtt0cpb	175022848	mogrady	Michaela	O'Grady	Alpha Gamma Delta		f	f	f	{"Educational Speaker"}
psu97c91bduy5nu367o5	584624040	neherrig	Nicholas	Herrig	Alpha Sigma Phi		f	f	f	{}
u42hyze7ywlg9fe4g0o3	907650744	hhelgren	Heather	Helgren	Alpha Delta Pi		f	t	f	{}
9j3sq75m3z2j4vp6jlbn	992782819	laurac	Laura	Campbell	Alpha Gamma Delta	Central	f	t	f	{}
uwtm07s71lelgqkjtmqa	979087109	hinchley	Abigail	Hinchley	Alpha Delta Pi		t	f	f	{"Lip Sync"}
ckk0485igq7v1kcnf75r	332755423	elambert	Edan	Lambert	Alpha Delta Pi		f	t	f	{"Educational Speaker"}
sgejsmzadchhrvn6emzi	948411488	byendis	Sidney	Brenkus	Alpha Gamma Delta		f	t	f	{}
4stmf418ysxjnfm1i6s6	290176912	ejkjar	Eliza	Kjar	Alpha Delta Pi		f	t	f	{"Educational Speaker"}
kt2qo2lyrubzye5h0116	429553124	bstinson	Brooke	Stinson	Alpha Delta Pi		f	t	f	{}
m9wp21mfan0843sbst6o	795472714	jancaric	Jessica	Jancaric	Alpha Delta Pi		f	t	f	{}
ywfq7wrf3qqsnrrkhprd	789308520	lwalker	Lauren	Walker	Alpha Delta Pi		f	t	f	{}
lds7e7rppvxj5k06e0j9	685160476	satroe	Samantha	Troe	Alpha Delta Pi		f	t	f	{}
qm6pfod0rwhhjsxlz60j	168072905	seorban	Sarah	Orban	Alpha Delta Pi		f	t	f	{"Educational Speaker"}
nn269dlv6hocq9be5yy9	145773628	jnlarson	Jordan	Larson	Alpha Delta Pi		f	t	f	{}
i1qpwtx0kexmhsn0ppm4	286401115	saleow	Szumei	Leow	Alpha Delta Pi		f	t	f	{}
8wtirnbg3uulvhdzzz0s	196149974	schafer	Sara	Schafer	Alpha Delta Pi		f	t	f	{}
oj7b1tp1x5ww6y99m2ku	632745113	akincart	Audra	Kincart	Alpha Delta Pi		f	t	f	{}
s65b5f5cbqvnv4lj2ok0	164528364	rejozwik	Rachel	Jozwik	Alpha Delta Pi		f	t	f	{}
udw8gyy0ablxdcubqy1c	381087731	mloswald	Megan	Oswald	Alpha Delta Pi		f	t	f	{}
3494d8mghgw51v3a0wng	851408558	mmsislow	Madelyn	Sislow	Alpha Delta Pi		f	t	f	{}
cbdig1zosxje3686yrtk	312308997	rwelsh	Rachel	Welsh	Alpha Delta Pi		f	t	f	{}
ppz6d4oro6qeziwymyen	683239557	jslarson	Jennie	Larson	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync"}
d8z299chibllfwk5chio	306957651	jade	Jade	Jensen	Alpha Delta Pi		f	t	f	{Treds}
r0leyth3flksvjumu2k4	568969433	anaisr	Anais	Romero-Rios	Alpha Delta Pi		f	t	f	{"Educational Speaker"}
ag4xmfs8p3yklhap8vdw	973558586	avaughan	Alexandra	Vaughan	Alpha Delta Pi		f	t	f	{Treds}
ng4f939g6j5ptqsscuqo	617692075	msoliver	Megan	Oliver	Alpha Gamma Delta		f	t	f	{}
uxf9o1sy1tfmh8yrmpl2	625175576	johna	John	Armstrong	Alpha Gamma Rho		f	f	f	{"Educational Speaker"}
4w77dumd3rnsnh1e54gt	670998328	ckhora	Clayton	Hora	Alpha Gamma Rho		f	f	f	{}
l8oul10ijcbyalr204ct	840777938	ehurd	Evan	Hurd	Alpha Gamma Rho		f	f	f	{}
w1bmuqioeqhg7554srb9	339268930	jmlauver	Jacob	Lauver	Alpha Gamma Rho		f	f	f	{}
sjzw2x2n3f3zx4tll3vd	864899063	reedm	Reed	McCormick	Alpha Gamma Rho		f	f	f	{}
v2eg0wd1965llmpehi4x	411920509	marcm	Marc	Meyer	Alpha Gamma Rho		f	f	f	{}
efcdxszcvcy97aeo1qfk	114055942	ttn	Tyler	Nicholson	Alpha Gamma Rho		f	f	f	{}
y6pv552nybl50mnm7k70	516345851	bskubal	Bradley	Skubal	Alpha Gamma Rho		f	f	f	{}
jbv82q1rseg3ple6k4rk	978281304	ksuntken	Kellen	Suntken	Alpha Gamma Rho		f	f	f	{}
r2rjqtmbaahbt0c9fvk7	28381353	jmtriggs	Johnathan	Triggs	Alpha Gamma Rho		f	f	f	{}
p0hsojcwuzgjd99jn1k6	72259187	thomasw1	Thomas	Wilgenbusch	Alpha Gamma Rho		f	f	f	{}
vw71kgpanx905em9m9js	716184497	njyeager	Nathan	Yeager	Alpha Gamma Rho	Crew	f	f	f	{}
hrxxbix6ukhdf9rjva98	212314102	nzumbach	Nolan	Zumbach	Alpha Gamma Rho		f	f	f	{}
a2osr3kztchsw62s00i5	415187794	alyssah	Alyssa	Hughes	Alpha Delta Pi		f	t	f	{"Lip Sync","Polar Bear Plunge"}
3esmekjkb6bx8ef94n73	159953794	jmrogge	Jessica	Rogge	Alpha Delta Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
t45l8newxev3efepodi4	869525689	kvwargo	Keilyn	Wargo	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ze0t1b5h7lf01w1aszhx	940805894	mthorn10	Monica	Thornton	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
yrk86fnnrn4qqlk02u7v	983703746	bennett8	Alexandra	Bennett	Alpha Gamma Delta		f	t	f	{"Polar Bear Plunge"}
16n3k4yh3esxzu92b2z6	638577964	morganl	Morgan	Lee	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
ga5jpu28li6m00fidrlo	100682639	mdpietig	Monica	Pietig	Alpha Delta Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
jsgjbz7czwke9t0lhwgw	705571899	cypwerx2	Ryan	Doubleday	Alpha Kappa Lambda		f	f	f	{}
6lt0waue8d01zivhganv	912891007	cclichty	Caleb	Lichty	Alpha Gamma Rho		t	f	f	{"Lip Sync"}
9y7mkfds9cyydnd68nzu	904352449	cbonar	Chad	Bonar	Alpha Kappa Lambda		f	f	f	{"Educational Speaker"}
t2qt59d8pqrohqe6vmvy	150038917	mmd	Madeleine	Dangerfield	Alpha Omicron Pi		f	f	f	{"Educational Speaker"}
xl4icsfdgaj4t0frm84b	365641276	morganh8	Morgan	Hassebroek	Alpha Gamma Delta		f	t	f	{}
cmvmcz2f1kbh54i6kyx0	807221415	ninad	Nina	DeVilbiss	Alpha Gamma Delta		f	t	f	{}
jhhyxjt81vekrhpfpous	668707039	amkruse	Abby	Kruse	Alpha Gamma Delta		f	t	f	{}
3v6x3emwcad099k5d00w	883427581	rjenkins	Randi	Jenkins	Alpha Gamma Delta		t	f	f	{"Lip Sync","Educational Speaker"}
b2hc9ou9usdqnx1hkel6	747636911	ebjasper	Ellen	Jasper	Alpha Gamma Delta		t	f	f	{"Lip Sync"}
vl8nnpao6gyy8gswm7an	602775173	ekoneval	Emily	Koneval	Alpha Gamma Delta		t	f	f	{"Lip Sync","Educational Speaker"}
oj1j21dw6vwv0lrutivd	511301847	epgood	Elizabeth	Good	Alpha Gamma Delta		t	f	f	{"Educational Speaker"}
cpqrd4m9935v1xql7qp3	255105880	aemclean	Alison	McLean	Alpha Gamma Delta		t	f	f	{"Educational Speaker"}
cjud4o3rafzanbhvu0rn	428505077	emilycs	Emily	Smith	Alpha Gamma Delta		t	f	f	{"Educational Speaker"}
zeprn0s63hvrzr852zmw	70728683	spang	Samantha	Pang	Alpha Gamma Delta		t	f	f	{"Educational Speaker"}
l5zbasyd6kgbfria15qg	422166778	kwelling	Kali	Welling	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync"}
1barb1e19qoayhp3v0vo	940973057	mlanis	Morgan	Lanis	Alpha Gamma Delta		f	t	f	{}
0hxxtvyv2fmqv765nqs8	170368222	ginac1	Gina	Cerrentano	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker"}
74f4n1q92dnp1rpp0mpt	306907625	cmlavery	Christina	Lavery	Alpha Gamma Delta		f	t	f	{}
auqnpoqxia0dsprk6w4n	916888000	ifavela	Izabel	Favela	Alpha Gamma Delta		f	t	f	{}
q27sw4ftydvyftrf2ih8	663646984	ahuet	Annmarie	Huet	Alpha Gamma Delta		f	t	f	{}
zoaicczrjvsgkr0lfifl	387903516	krclev27	Kaitlin	Clevenger	Alpha Gamma Delta		f	t	f	{"Karaoke 1st Cuts"}
8ff69abrqbd8aaddg4y8	447881454	jtharp	Jessica	Tharp	Alpha Delta Pi		t	t	f	{Volleyball,"Educational Speaker","Lip Sync"}
b57im1sufxlco7hrocpc	443008594	cleaf	Catherine	Leafstedt	Alpha Gamma Delta		f	t	f	{}
txks66kfei19atdxta16	714515849	swibholm	Sophia	Wibholm	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync"}
7lqobpx8pqnqcdt1f41s	880946066	alloomis	Amanda	Loomis	Alpha Gamma Delta		f	t	f	{}
ltyr2hgdp26takjbpz6f	905028152	makoenig	Margaret	Koenig	Alpha Gamma Delta		f	t	f	{}
u7lmn6m96gfgnpfk2r6e	548251727	mkoneval	Madigan	Koneval	Alpha Gamma Delta		t	t	f	{}
ej0nva9av28ovbcfqv7c	529538033	aedelman	Annie	Edelman	Alpha Gamma Delta		f	t	f	{}
wshg9lji2kjsf5ptdiy0	232883651	micombs	Micaela	Combs	Alpha Gamma Delta		f	t	f	{Volleyball}
aeg7aipbuqr1lqwb9kr7	776497722	advorsky	Ashley	Dvorsky	Alpha Gamma Delta		t	t	f	{}
vvgi6mgbe21gst6l0gde	964378415	kohlmann	Rebecca	Kohlmann	Alpha Gamma Delta	Central	f	t	f	{}
vp9loj6i6iuxz3tfs3cz	934117205	jhelberg	Jessica	Helberg	Alpha Gamma Delta		t	t	f	{}
odfrexezman33krarxyr	604319748	cayoder	Cathryn	Yoder	Alpha Delta Pi		f	t	f	{"Educational Speaker"}
mfg7yxhsbl5xy3c767op	936905999	mathis	Madeline	Mathis	Alpha Gamma Delta		t	t	f	{"Lip Sync"}
ryaw7fc9u0o7krmm2z38	161340211	klafrenz	Kyle	Lafrenz	Alpha Gamma Rho		f	f	f	{"Educational Speaker"}
2ysk1dg7sn711qn714yw	794201448	poggy11	Michael	Poggemiller	Alpha Gamma Rho		f	f	f	{"Educational Speaker"}
04ltgibzb6boa8gfdqvj	859296438	jrolson	Jake	Olson	Alpha Gamma Rho		f	f	f	{"Educational Speaker"}
b05kmrzt5qkp4pip7npr	953534582	ghagenow	Garett	Hagenow	Alpha Gamma Rho		f	f	f	{"Educational Speaker"}
fcy1z7fsldlxq3ctjqvd	136782669	blhanson	Brandon	Hanson	Alpha Gamma Rho		f	f	f	{"Educational Speaker"}
uzuvzq715nb8j1ckzuwd	627821214	kaitlynd	Kaitlyn	Danielson	Alpha Omicron Pi		f	f	f	{}
3wcqlzd8sh10nxbjfek5	125823698	gelonen	Grace	Elonen	Alpha Omicron Pi		f	f	f	{}
4xmv9ql2hdzrq7dphrjb	949013065	tevans	Taylor	Evans	Alpha Omicron Pi		f	f	f	{}
xpdkohjltcplqe4rv31i	606446841	hlgreen	Hannah	Greenfield	Alpha Omicron Pi		f	f	f	{}
kewi0l21wtsxxck16eou	785581797	mtguion	Mia	Guion	Alpha Omicron Pi	Crew	f	f	f	{}
sc7cttzjfosd4o525w0d	348029682	ahews	Ashley	Hews	Alpha Omicron Pi		f	f	f	{}
7a1nuw95wril3subdl1c	123438315	srholmes	Shannon	Holmes	Alpha Omicron Pi		f	f	f	{}
mdyfe7k3h2tqkyt8wqlh	337806469	brekat95	Breanna	Katcher	Alpha Omicron Pi		f	f	f	{}
lbpjxx7yhhspfee3x5go	140296184	ckugel	Christina	Kugel	Alpha Omicron Pi		f	f	f	{}
ask8cshjp8ne2jt8t5m6	94882788	mrstrong	Madison	Strong	Alpha Delta Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
dk6qah8bkep6a4n1cgk1	187467308	gkcall	Grace	Callihan	Alpha Gamma Delta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
jh03egui0u52uz23p390	121581492	rcessna	Rachel	Cessna	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
oc03w39boo2u8etn8qu2	360098768	amgent	Anne	Gentilini	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
ijbf3ze637kgqx3esx9f	341948607	kaylac	Kayla	Chalfant	Alpha Gamma Delta		f	t	f	{"Polar Bear Plunge"}
cc5ry5n8evi1dy2atbj2	679031353	mbzolfo	Marie	Zolfo	Alpha Gamma Delta		t	t	f	{"Polar Bear Plunge"}
nw2pczva1tn4mfhb8z8n	740925213	nschadle	Neil	Schadle	Alpha Kappa Lambda		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
hmsl6hfaiemjlvzn803a	161228067	olschaaf	Olivia	Schaaf	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge",Broomball}
kkey4vmaetgyeyqdr41l	921918998	gracel	Grace	Loeschke	Alpha Omicron Pi		f	f	f	{}
lvabgzywkglklc66teo6	165479314	admiller	Adrienne	Miller	Alpha Omicron Pi		f	f	f	{}
6jza9295dps6wgs128g2	305847542	eolberd	Emily	Olberding	Alpha Omicron Pi		f	f	f	{}
fmo6mqrgpi5aie63ddtv	338692382	cplescia	Cara	Plescia	Alpha Omicron Pi		f	f	f	{}
nk7uhhu5klw4nyljhh4a	563677114	krebhorn	Katherine	Rebhorn	Alpha Omicron Pi		f	f	f	{}
fxpnx2uoyw26kepld28z	879285407	andreana	Andreana	Schlegel	Alpha Omicron Pi		f	f	f	{}
ncckdthfj8vbph1wvf2z	734579874	alyssata	Alyssa	Tainter	Alpha Omicron Pi		f	f	f	{}
wn2cj958ddee45vbgwqo	114258188	ebialick	Emily	Bialick	Alpha Phi		f	f	f	{}
x9a8hsa20n1tpkmft3gf	363620257	showers	Katherine	Showers	Alpha Gamma Delta		f	t	f	{}
kc0io839z3t91hvwnox1	665271607	kaschram	Kelli	Schram	Alpha Gamma Delta		t	t	f	{}
zc19f234c4cto2cq3zb5	527376882	hharfst	Hannah	Harfst	Alpha Gamma Delta		t	t	f	{"Educational Speaker"}
5htgv2boz0fh26fd5dhs	755664910	mia	Emilia	Merritt	Alpha Gamma Delta		t	f	f	{}
lqbi0gr5r2qsvi6m76aw	623090500	krreno	Kristen	Reno	Alpha Gamma Delta		f	t	f	{}
q7jj1yi6h6bpvfiri3d4	294578448	cjhalley	Charlotte	Halley	Alpha Gamma Delta		t	t	f	{"Lip Sync"}
dnlteq1wv197eci064y2	742266525	tameraa	Tamera	Alexander	Alpha Omicron Pi	Crew	f	t	f	{}
r2h54hwio4r0lamkn3ab	372255884	dcsmith	Dustin	Smith	Alpha Gamma Rho		f	t	f	{}
whvackldvltyhuf8ig9i	776587835	rrieken	Reece	Rieken	Alpha Gamma Rho		t	f	f	{"Educational Speaker"}
1oz0cp5kbc8b327yifmi	409574165	cccota	Casey	Cota	Alpha Kappa Lambda		t	f	f	{}
3aq6t2m1ypxgebvalkrk	155643520	bzuber	Elizabeth	Zuber	Alpha Gamma Delta		t	f	f	{"Lip Sync","Educational Speaker"}
56r6x0j1yael30qmiiky	349618269	khaars	Kasey	Haars	Alpha Gamma Delta		f	t	f	{"Educational Speaker"}
ccb3p3lpa0qlvcl15hk7	702445769	staloch	Morgan	Staloch	Alpha Gamma Delta		t	t	f	{}
snw5i7yimfphk2ddn01q	942527599	hpkruse	Harrison	Kruse	Alpha Gamma Rho		t	t	f	{"Educational Speaker"}
6z949i4x8be738mjqh7s	387118732	srschwar	Simone	Schwartz	Alpha Gamma Delta		f	t	f	{}
h1rxyad830vks36lvegp	133815682	sarahstr	Sarah	Striegel	Alpha Gamma Delta		f	t	f	{}
vezipdjhipjldztcc7c7	76346298	jplong	Jennifer	Long	Alpha Gamma Delta		t	t	f	{"Lip Sync"}
hx0pnn00ucxp6jenuunx	614615001	mwrand	McKayla	Rand	Alpha Gamma Delta		t	t	f	{}
3mceucbfor82pmve8cij	58284261	cjroyer	Cooper	Royer	Alpha Gamma Rho	Central	f	t	f	{}
840cp64rx2p677tz3va2	417083667	hilaryg	Hilary	Green	Alpha Phi		f	f	f	{}
mkxqiwg2d5nopx2l41ib	554604074	georgiam	Georgia	McAlister	Alpha Phi		f	f	f	{}
ppp1iwa0fzqjrjgc7yrb	262138877	mcmurrin	Mckenzie	McMurrin	Alpha Phi		f	f	f	{}
tm67zldvgqmoxvjf7bhc	498032559	alexism1	Alexis	Mollenhoff	Alpha Phi		f	f	f	{}
ktsx8yqkmigm5juq0qx6	261689465	dphom	Destinie	Phomsouvanh	Alpha Phi		f	f	f	{}
f3deq385o1dslvh1pxun	974799858	lmmuench	Lauren	Muench	Alpha Phi		f	f	f	{"Educational Speaker"}
3uep04c2q8hbeya0jnb1	735417711	vital	Vita	Lindquist	Alpha Phi		f	f	f	{"Educational Speaker"}
wzy5zsk38wnsjvb51ytq	446039622	ghopkins	Grant	Hopkins	Alpha Sigma Phi		f	f	f	{}
qupwo1e19hmm8q3b8sgg	857532708	smichaud	Sarah	Michaud	Alpha Gamma Delta		f	t	f	{"Educational Speaker"}
9i2xqazt8vydmk7kdmgu	300520220	josephm	Joseph	Myers	Alpha Kappa Lambda		f	t	f	{"Educational Speaker"}
rfsiua1y6n5y6dprrqfx	760516830	ctennant	Chance	Tennant	Alpha Kappa Lambda		t	f	f	{"Educational Speaker","Lip Sync"}
6f49enr68yedoapxtskz	949128208	joi	Joi	Johnson	Alpha Gamma Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
xpkzx8ncw0gdhwb3phc2	186993839	gnolasco	Gabrielle	Nolasco	Alpha Omicron Pi		f	t	f	{"Polar Bear Plunge"}
tcrjs292rf98bdlonwev	893734842	tikrause	Tatiana	Krause	Alpha Omicron Pi		t	t	f	{"Polar Bear Plunge"}
p1rrxgs4jfy482iw5d3v	728983276	walthier	Heidi	Walthier	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
em3n401jgvo9aufequ4h	276220018	sochs	Sarah	Ochs	Alpha Gamma Delta		t	t	f	{"Polar Bear Plunge"}
dqhm5z1rmtuud72689zo	61395197	mklapke	Madison	Lapke	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
ikc60vprpf4ajoglu7h0	400184821	mchora	Madeline	Hora	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
11094wlkpkeoei7gpkad	33668660	julij	Julianna	Jespersen	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
kxe9giuqfc933a8hwr1b	815709895	dannav3	Danna	Verastegui	Alpha Gamma Delta		f	t	f	{"Polar Bear Plunge"}
r05fqyozs9sstzgve1i8	908280373	jaredt	Jared	Thompson	Alpha Kappa Lambda		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
lnhr1yr9dbvpshmgf2dm	348695367	hrlobas	Hannah	Lobas	Alpha Omicron Pi		f	t	f	{"Polar Bear Plunge"}
zjkggcsth60q84mxblgg	492418943	ignorth	Isabella	North	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
74ly5nsd5bicuum1wrxz	7690702	lilydrew	Lily	Drew	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
3i0tcs9c3ozbre5d5idb	253400179	jppoferl	Jordynn	Poferl	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
ml2s5oywil4gn538xvuj	581513958	hayolson	Hayleigh	Olson	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
j8l3m3w0aeubesjbjudw	794742984	bbolke	Bailey	Bolke	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
q9oz9xkic1sculiux4a5	171765594	akmorton	Amanda	Morton	Alpha Omicron Pi		t	t	f	{"Lip Sync",Broomball}
mpcm39e13mgsx27azmf1	888311488	genny32	Genevieve	Dierking	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
u83p55bgpe705nve697w	953563631	cewebb	Chase	Webb	Alpha Kappa Lambda		t	f	f	{"Educational Speaker"}
hube067zjw2kvite41yc	616868252	kostecki	Joseph	Kostecki	Alpha Kappa Lambda		f	t	f	{"Educational Speaker"}
qdsvkbwgbwg07gdc9pom	171977806	hougland	Tyler	Hougland	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
bfzlkup3mexp6qzcexnb	881875995	nrlane	Nicholas	Lane	Alpha Gamma Rho		f	t	f	{}
jlwp9igen56ic42i6o2s	646955309	jtjardes	Jeremy	Tjardes	Alpha Gamma Rho		f	t	f	{}
5bt4axyi208dxo8zqjz4	732048317	ljgosse	Luke	Gosse	Alpha Gamma Rho	Central	t	t	f	{}
7lqjkrpidklyj6finxei	320426106	mhora	Mitchell	Hora	Alpha Gamma Rho		f	t	f	{}
qpqeiagmys3hajs2yq5q	223599392	cmharsh	Curtis	Harsh	Alpha Gamma Rho		f	t	f	{}
2pe5vlw3vwov7757anmm	696938242	ddrague	Dylan	Rague	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
2f8aq69hfjlx3egls5ru	620571952	llafrenz	Logan	Lafrenz	Alpha Gamma Rho		f	t	f	{}
4j95ybk3gpk594y6epnh	256221630	tdwiese	Trey	Wiese	Alpha Gamma Rho	Crew	f	t	f	{}
dhe6bx9gysoq5ffrfqd7	265341076	tdtriggs	Tyler	Triggs	Alpha Gamma Rho		f	t	f	{}
txtkmchzkg3t6fwh51ty	664313650	tforsyth	Trey	Forsyth	Alpha Gamma Rho		f	t	f	{Volleyball}
35yohw4uvks0dztlrqdz	321381060	mheiller	Matthew	Heiller	Alpha Gamma Rho		f	t	f	{}
gwi9n8xpc8afht3gwwvx	681634954	janaes	Janae	Smith	Alpha Gamma Delta		f	t	f	{"Educational Speaker"}
15b6h8mqoe92tjvdcauk	6481475	nnarayan	Nikita	Narayan	Alpha Gamma Delta		f	t	f	{"Educational Speaker"}
k6gqmowckrk2mkh110hz	92124056	qsamanic	Quinn	Samanic	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker"}
7ci9za494nwfpwtuj6nh	968377434	apatt	Anna	Patterson	Alpha Gamma Delta		t	t	f	{"Lip Sync"}
p833mw8xeuvp4t7thjme	770738993	akstark	Amy	Stark	Alpha Gamma Delta		f	t	f	{"Educational Speaker"}
z0e6qdfhma6wcwkwf5hi	632649017	arroll	Alesha	Roll	Alpha Omicron Pi		t	t	f	{"Lip Sync"}
3vnip3cm6cn1njvbdn36	133453364	nateholl	Nathan	Holloway	Alpha Gamma Rho	Crew	f	t	f	{}
u24ctx8b7av9ayfmuydl	754935209	absadler	Alix	Sadler	Alpha Omicron Pi		f	t	f	{}
rcb2dliyasb5e8kvp6fn	452443992	lengley	Lauren	Engley	Alpha Omicron Pi		f	t	f	{}
2gz14cbiluxcm00zk85d	457374918	rmsmiley	Regan	Smiley	Alpha Omicron Pi		f	t	f	{}
8088un2jynw8wdghq33s	334679345	jdmaass	Jeremy	Maass	Alpha Gamma Rho		f	t	f	{}
peu36d2gowle6a69ox5n	319150832	skohles	Stephanie	Kohles	Alpha Omicron Pi		f	t	f	{}
jnuwako9xcl5zcylflb6	629298693	wilhelmi	Mary	Wilhelmi	Alpha Phi		f	f	f	{}
myz2dseacdvdcs63o94g	570616130	awiz	Anna	Wisnieski	Alpha Phi		f	f	f	{}
t2k2j5bakhnh48vo0cwb	311204894	mbixby	Morgan	Bixby	Alpha Sigma Kappa		f	f	f	{}
mvarxtq6k83c5hyab221	303314362	hacarr	Haley	Carr	Alpha Sigma Kappa		f	f	f	{}
91mz5s6rmsbfjgii5mf5	418283866	katie94	Katie	Jacobson	Alpha Sigma Kappa		f	f	f	{}
if5m0tqxj9bowprm39tz	247005788	cooper23	Hailey	Cooper	Alpha Phi		f	t	f	{"Educational Speaker"}
qrdf0vi7tq6wz3erwrmx	75495444	awhited	Austin	Whited	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
9njwesoioc0w0qrljf9v	431487056	jywest	Jordan	West	Alpha Omicron Pi		t	t	f	{"Educational Speaker"}
dqcsjbyoh2c1b7xpm14g	168638470	christyc	Christy	Calderwood	Alpha Omicron Pi		t	f	f	{}
4o42s1puhulnsx03jo5t	141745628	manning	Susan	Manning	Alpha Phi		f	t	f	{}
g092z1d2bifn1k1isd7b	728399672	annagay	Anna	Gay	Alpha Phi		t	t	f	{}
8imspq0p8b4iyiowirqr	133509670	emmab	Emma	Bixenman	Alpha Phi		t	t	f	{}
zlm34q3j85u7a9sysbk1	860087228	anstone1	Alexia	Stone	Alpha Omicron Pi		t	t	f	{"Polar Bear Plunge"}
zx9bo6a0zjyvznluccvj	898041172	meganm2	Megan	Mariotti	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
k5gdp1xxlsjocg3zl0zj	468012576	pgilmore	Payton	Gilmore	Alpha Omicron Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
yolpeba4fi7pde89rlcm	196898702	moriahg	Moriah	Greenhill	Alpha Omicron Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
0l4s0ephl42v6vzhi1bt	387772385	thomasa	Amanda	Thomas	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
s9jce92aco4n83qize9m	929586730	mmmatt	Megan	Matt	Alpha Omicron Pi		t	t	f	{"Polar Bear Plunge"}
0bd6mmropzn50j6l397p	687063377	lukowski	Rachel	Lukowski	Alpha Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
0myefrnfdk9bcbjlyznd	234179013	lisat	Lisa	Thammavong	Alpha Omicron Pi		f	t	f	{"Polar Bear Plunge"}
bsqsrak0wvgyipardcri	936806327	asheehan	Avery	Sheehan	Alpha Phi		t	t	f	{"Polar Bear Plunge"}
8ud79v0yby0x209ynyut	282894639	disae	Disa	Erickson	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
cb9efohp15s5ohfvfamy	949168220	rdubbink	Rachel	Dubbink	Alpha Omicron Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
jjqcg17nyqfzo4iwg9et	776904128	rekirk	Riley	Kirk	Alpha Omicron Pi		f	t	f	{"Polar Bear Plunge"}
5eg9bo4rvzheyfryulmr	915840954	cocallas	Maia	Cocallas	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
y2mc05xfttpxwrypw3c3	956680750	dlmulder	Dakota	Mulder	Alpha Kappa Lambda		f	t	f	{Broomball}
6fwh5tnyk9og0vgcez00	117824774	antaylor	Ann	Taylor	Alpha Omicron Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
vygo0q0a9cqd6p12mlja	612622069	kfurst	Katie	Furstoss	Alpha Omicron Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
tm6p98u034jrun2eas3o	889464604	vsama	Vineela	Sama	Alpha Omicron Pi		t	t	f	{"Polar Bear Plunge"}
8d3m3k1u0k8dl6zri2g8	622510889	allyson	Allyson	Ballinger	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
thhil060upzopimzezov	728700000	khagerty	Kelsi	Hagerty	Alpha Sigma Kappa		f	t	f	{}
tn0w4238fg73iga19rjk	847189363	childe	Courtney	Hildebrandt	Alpha Phi		f	t	f	{}
d7ov1zus0tzwy36969fc	707631953	mlstites	Maggie	Stites	Alpha Omicron Pi		f	t	f	{}
lkwh4njwss0zut6onnae	264770937	peters1	Michael	Peters	Alpha Gamma Rho		t	t	f	{"Lip Sync","Educational Speaker"}
1paymmigfnjq922c8ear	539127589	kbriggs	Krista	Briggs	Alpha Phi		t	f	f	{"Educational Speaker"}
hy2i422wu26nbxnrq2m8	244328084	jeannec	Jeanne	Connolly	Alpha Phi		t	f	f	{}
o7qmjk0vfasy0nn8evij	371939568	konradi	Bridgett	Konradi	Alpha Phi	Crew	t	t	f	{}
ux5wr9dw8bomnqaqg3kq	680768088	leahk	Leah	Kesselmayer	Alpha Omicron Pi		f	t	f	{}
8nbu0sa3t7gprxoaky8f	626997395	ashm	Ashley	Moore	Alpha Omicron Pi		t	t	f	{}
tfuzsju77p47m3mcph19	451580129	pjw	Patrick	White	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
3fc1vwl4lzjnzkpsm7dm	601990409	ajbrand	Alex	Brand	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
3wwx4zh9e5zfdfi3lxfs	319824505	pmtrumm	Philip	Trumm	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
wewipq82laox486tr85i	458143686	mlkerns	Matthew	Kerns	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
y7bunkzz29ainky7hndh	905845941	bjanssen	Brady	Janssen	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
eiss06ua5i6cauavmuvx	701675987	jjkruger	Jakob	Kruger	Alpha Gamma Rho		t	t	f	{"Lip Sync","Educational Speaker"}
4lgv3x3ilhno0njq0ey9	923383461	heineman	Grant	Heineman	Alpha Gamma Rho		t	t	f	{"Lip Sync"}
ek1pkqi91abnxlzhqpa8	702670997	sgerrard	Samuel	Gerrard	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
50m9whvhqnqphnywihpo	953415463	wjreever	Wesley	Reever	Alpha Gamma Rho		t	t	f	{"Lip Sync"}
lzk6nf6jj4y61we5t8iu	401573172	ccmongar	Cory	Mongar	Alpha Kappa Lambda		t	t	f	{"Educational Speaker"}
tp9ehrmqwgln6kx2l2t6	210861651	mdunham	Megan	Dunham	Alpha Omicron Pi		t	t	f	{}
8otwlbsltuwli9x7gqvi	772264525	dmyepiz	Daisy	Yepiz	Alpha Phi		f	f	f	{"Educational Speaker"}
ikj8oacmtjhpso81rq32	647248602	ealosen	Elizabeth	Losen	Alpha Sigma Kappa		f	f	f	{"Educational Speaker"}
66ds51wfyjq1qq357dv2	961600640	aladam17	Alexandra	Adams	Alpha Sigma Kappa		f	f	f	{"Educational Speaker"}
vavmzragvbjmhca8jdiu	387976589	jordands	Jordan	Darroughspranger	Alpha Sigma Kappa		f	f	f	{"Educational Speaker"}
btp2lblf9k24utmhyimp	351966615	umahgoub	Umnia	Mahgoub	Alpha Sigma Kappa		f	f	f	{}
i60168fg80gpwi4wk85f	41244203	mnatrop	Makayla	Natrop	Alpha Sigma Kappa		f	f	f	{}
bnki7ee73j6jp1q5p4b8	721705985	amrinker	Amelia	Rinker	Alpha Sigma Kappa		f	f	f	{}
tail4q5as4y7h51o768r	363957674	arudlong	Autumn	Rudlong	Alpha Sigma Kappa		f	f	f	{}
m8kil807n0ma8eu7z5z9	685306622	srmsmith	Sydney	Smith	Alpha Sigma Kappa		f	f	f	{}
lduliz2litgn6uyer7og	240563323	psorense	Patrice	Sorensen	Alpha Sigma Kappa		f	f	f	{}
1nl22t91b7h71gasrnyt	709717008	tnthoen	Taylor	Thoen	Alpha Sigma Kappa		f	f	f	{}
gyu88u17ml9j3tl7wtie	494133640	bayliew	Baylie	Wingerson	Alpha Sigma Kappa		f	f	f	{}
ih11r9j80jh1ue14vaw4	400518118	mcwood	Meghan	Wood	Alpha Sigma Kappa		f	f	f	{}
9kbzuze6dt71vf6tk0jr	248959743	nhyeager	Nicole	Yeager	Alpha Sigma Kappa		f	f	f	{}
7v9z66z6qocjq4ll4ugj	73952879	amc1	Adam	Christensen	Alpha Sigma Phi		f	f	f	{}
gcxjdaznr5gszublka15	571677121	acruise	Austin	Cruise	Alpha Sigma Phi		f	f	f	{}
dbuzlsml4f6r7ih8xsc5	389251863	jtemblen	Jacob	Emblen	Alpha Sigma Phi		f	f	f	{}
uk5bylywvl0m7i6xojch	849883034	mikeyg	Mike	Gallagher	Alpha Sigma Phi		f	f	f	{}
tm2vcwzzh3tfqxsttfal	630480920	jgaylord	Jack	Gaylord	Alpha Sigma Phi		f	f	f	{}
if5hye0uvzqn5o1zfn21	612500889	pgerlich	Paul	Gerlich	Alpha Sigma Phi		f	f	f	{}
5l6yixozhq4w0jua0pq3	828945117	rgluck	Randy	Gluck	Alpha Sigma Phi		f	f	f	{}
yt75coyd9gsrpf5ybxez	114698608	gracanin	Edi	Gracanin	Alpha Sigma Phi		f	f	f	{}
szkmdrfh1rytfdle46hl	360266931	roblhunt	Robert	Hunt	Alpha Sigma Phi		f	f	f	{}
ydphzp7xpy0qv6ohvx1q	46243221	maggwen	Maggie	Feldmann	Alpha Phi	Crew	f	t	f	{}
97pvbrle8ex11fhflyft	573389817	corinneh	Corinne	Hastings	Alpha Phi		t	t	f	{}
mha65dnt4t9m8wdufhs1	173021878	rgoodwin	Riley	Goodwin	Alpha Omicron Pi		t	t	f	{"Polar Bear Plunge"}
xo6aneyhn2n5ngzqj18v	617041454	smccunn	Sarah	McCunn	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
tqk00xx1uly7fgdo7va2	82526444	hayleyr	Hayley	Ross	Alpha Omicron Pi		t	t	f	{"Polar Bear Plunge"}
rry6jbkypt2cx35v9okg	96985889	carleas	Carlea	Schuler	Alpha Omicron Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
u3gvt1i11g5a9rhyqcmi	53405352	jenag	Jena	Gilbertson	Alpha Omicron Pi		t	t	f	{"Polar Bear Plunge",Broomball}
5inu5k1cwpdgbkgvndhg	392761381	cbtaylor	Caitlyn	Taylor	Alpha Omicron Pi		f	t	f	{"Polar Bear Plunge"}
0ztoffrssliztmea9wkq	440859443	tsboruff	Taylor	Boruff	Alpha Phi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
c08tjuuuxxe6pdhrst24	604950367	jlcastle	Jenna	Castle	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
0tg2xk4lsa17erpejejr	981113161	cjeven	Casey	Even	Alpha Phi		t	t	f	{"Polar Bear Plunge"}
j9a6eg8ary7vg3y1ui12	934037104	emreding	Elizabeth	Reding	Alpha Phi		t	t	f	{Treds,Broomball}
b5ob7elmw9dzwi4yhllq	717182466	nicolea1	Nicole	Ackerman	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
5yit7ezbtgunpd0oh6ix	29704703	reshetar	Josephine	Reshetar	Alpha Omicron Pi		f	t	f	{Volleyball,"Polar Bear Plunge",Broomball}
vg51gh6s1jrg3vl6fvji	168271123	armyles	Adaiana	Myles	Alpha Omicron Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
nljxwxu5p2ogib8yuomb	582959413	rnehring	Rachel	Nehring	Alpha Omicron Pi		t	t	f	{"Educational Speaker"}
nmogwyxfsrrumfwytysq	398912582	taameri	Taylor	Ameri	Alpha Phi		f	t	f	{"Educational Speaker",Basketball}
8kml0d923w85xmt0ghgk	418613195	ccschlot	Cameron	Schlotfeldt	Alpha Kappa Lambda		f	t	f	{"Educational Speaker"}
fra6h9c7ldymdlulbyqf	872691820	hmosiman	Hillary	Mosiman	Alpha Phi		f	t	f	{Basketball}
293yh7wqnknrzjt3466k	80824768	sydo3	Sydney	Overgaard	Alpha Phi		f	t	f	{}
zueqzd1lw2zn25k5bx4p	666689051	smorton	Sarah	Morton	Alpha Phi		f	t	f	{}
zdsh0vw6uwbmg52v94nw	455232806	kecotton	Katherine	Cotton	Alpha Phi		f	t	f	{}
ezs65myx9s2r545hkdxw	995856862	mcdoyle	Meredith	Doyle	Alpha Phi		t	t	f	{}
mo5uq09lelb8m1nxmgka	42049007	breevm	Breanna	Van Meeteren	Alpha Phi		t	t	f	{}
5gpq4yqv1kb9ejaomhrh	845719875	mfillman	Mariah	Fillman	Alpha Phi		f	t	f	{}
j7d9dhv42kqjzf9ww9oz	56532507	standish	Margaret	Standish	Alpha Phi		t	t	f	{}
tf2vt57bldi4csk9ando	923242320	abihami	Abigail	Hamilton	Alpha Phi		f	t	f	{}
zlal5jpy27z1wq786d8w	817000248	nicoleb	Nicole	Bernhagen	Alpha Phi		f	t	f	{}
lbjk5v0u0s89nclmsw1g	182609455	mikenze	Mikenze	Marrone	Alpha Phi		t	t	f	{}
dyi7sie24ghlwdies9sf	168231063	mckernm	Megan	McKern	Alpha Phi		f	t	f	{}
h8y5vetoa5tfma3qqoxq	885457605	jhanshaw	Jordyn	Hanshaw	Alpha Phi		f	t	f	{}
ojjtnljfvkrlfn1rvgj5	392101737	sns	Sarah	Schuster	Alpha Phi		t	t	f	{}
a3g64lk44z53rv2b8gel	423960562	nhgglnd	Dana	Hagglund	Alpha Omicron Pi		f	t	f	{}
xq8s7hvv69xvj0xi5xn0	813495683	kristens	Kristen	Swiercinsky	Alpha Sigma Kappa		f	f	f	{"Educational Speaker"}
8assyofrn791djfq7v32	389373985	zmurrell	Zachary	Murrell	Alpha Sigma Phi		f	f	f	{"Educational Speaker"}
dnoak74u95adeyq9i10p	522188695	grantm	Grant	Morthland	Alpha Sigma Phi		f	f	f	{"Educational Speaker"}
9dyz8wsshijepy2ia6xc	682813158	tbeckett	Tyler	Beckett	Alpha Sigma Phi		f	f	f	{"Educational Speaker"}
o3zf81sqn130se2h8a1o	714239526	brookp	Brook	Pieretti	Alpha Sigma Phi		f	f	f	{}
mzteisuvmvsid7nf9jyc	840353539	ethanrro	Ethan	Rohlk	Alpha Sigma Phi		f	f	f	{}
ny98epfajvclejubw2ar	86937851	arsangem	Akhil	Sangem	Alpha Sigma Phi		f	f	f	{}
ihxdy6zrl7rn2d3wxkbt	184001818	rlstarn	Ryan	Starn	Alpha Sigma Phi		f	f	f	{}
ncm3027g6mpmy0y3pwfg	626164539	at1000	Alexander	Thousand	Alpha Sigma Phi		f	f	f	{}
nkpuv0kgr0821wrpif3n	459021563	tokarski	Matt	Tokarski	Alpha Sigma Phi		f	f	f	{}
19x2k7qfdvs434iqn3qy	98968902	lgwade	Logan	Wade	Alpha Sigma Phi		f	f	f	{}
bkvkjjredus0m0nqkg95	461622188	cmw3	Christopher	Williams	Alpha Sigma Phi		f	f	f	{}
vmx576ab518gwujz3ext	693281626	pradeen1	Pratheen	Barthiban	Alpha Tau Omega		f	f	f	{}
hkz9amnswil4g060zume	288660372	hjbrandt	Hunter	Brandt	Alpha Tau Omega		f	f	f	{}
c49jyemi3094lghpw3m0	332671339	pfgallos	Peter	Gallos	Alpha Tau Omega		f	f	f	{}
u56tko3efgjm7f8nu60a	936811876	travisdh	Travis	Hoffmann	Alpha Tau Omega		f	f	f	{}
iifmesw8dguud3v5eb4u	805371567	ajoh2318	Alexander	Johnson	Alpha Tau Omega		f	f	f	{}
gvogcsgsjiftmuxpayvi	375575223	jmill	Jack	Miller	Alpha Tau Omega		f	f	f	{}
fodw41lshf1qw9k7dg6o	113413300	rqn	Robert	Nordland	Alpha Tau Omega		f	f	f	{}
918pcnq64tcpgvxsu07m	813172360	mdpeters	Matthew	Peters	Alpha Tau Omega		f	f	f	{}
p97bxaqaq4qs3n3b1i39	757760003	jarivera	Jose	Rivera	Alpha Tau Omega		f	f	f	{}
9wfxrg42a0vjs7ukf6b3	115222135	millburg	Adam	Millburg	Alpha Tau Omega		f	f	f	{"Educational Speaker"}
1yx67c0i3jz7i1znvj1e	690386718	kwallner	Katie	Wallner	Alpha Phi		f	t	f	{"Educational Speaker"}
2fqmqgfybyr5joo8ztp8	328212885	elunzer	Emily	Lunzer	Alpha Phi		f	t	f	{}
zlikreywp55qbmlhocws	341124805	jennb	Jennifer	Birmingham	Alpha Phi		f	t	f	{"Educational Speaker"}
tptgu3z6wfsy0ep7jpg6	571746346	wharton	Maya	Wharton	Alpha Phi		t	t	f	{"Educational Speaker"}
k03i2z4jlyam33zx17vx	400054655	stephany	Shannon	Stephany	Alpha Omicron Pi		t	t	f	{"Polar Bear Plunge"}
r2r0kemchnunp875fr4x	368541173	eashudak	Elizabeth	Shudak	Alpha Omicron Pi		t	t	f	{"Polar Bear Plunge"}
uocnv7bs95bgzg0u5aag	524374879	kkrueger	Kylie	Krueger	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
3r679yjpnukafvhopury	654423770	ecowles	Emily	Cowles	Alpha Omicron Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
cboa2wztibnts96oz7t0	906324419	yiyuanz	Yiyuan	Zhang	Alpha Omicron Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
arzgp4jvna1k3k6eg5ou	65603561	krcooper	Katelyn	Cooper	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
z7mx683p2wjo3sq19f0n	71520477	bohnsack	Jordan	Bohnsack	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
xlbwbrgc5jp5tksikhdg	414063675	alraus	Abby	Raus	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
h357oajrzjxpxx72xnwd	69122085	rjdavis	Riley	Davis	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
qg8dmeiwl9su6dyypf05	254655401	rachelr1	Rachel	Rothmeyer	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
qehopn44vlm39t0vj70b	871443573	tkrauss	Taylor	Krauss	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
vqopzgkteayqmgec7tf3	400373998	scbusby	Sarah	Busby	Alpha Phi		t	t	f	{"Polar Bear Plunge"}
pa0qa1i55wqeecgftgm8	17488471	oliviac	Olivia	Carrasco	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
7lq8v8rm1pwmwycgjxu3	712738026	mbellamy	Moira	Bellamy	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
tqcuhhse2jnj17nrpjbw	48249226	ekessler	Emma	Kessler	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
68xj807318vnnxpl8ucp	614370757	lavigar	Lauren	Vigar	Alpha Phi		f	t	f	{}
t4aiz0j1zw6qrp7yy4z5	464642178	abedi22	Amal	Abedi	Alpha Sigma Kappa		f	t	f	{}
0u6nlim63rl3czglob3o	861738962	jabader	Jessica	Bader	Alpha Sigma Kappa		t	f	f	{"Lip Sync"}
3pwj87yept4sy7ope76j	896211340	jmaring	Jenna	Aring	Alpha Sigma Kappa		t	f	f	{"Lip Sync"}
edsg7cbpe6zu6bnhpinv	490343870	mhengel	Mollie	Hengel	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker"}
bhh5ca8auszywypufgge	639134529	laurenr	Lauren	Rectenwal	Alpha Phi		f	t	f	{}
znaw7mgx7vx2u2klqvgu	258460202	sara223	Sara	Townsend	Alpha Phi		f	t	f	{}
8chw0ompanb0ai7fehyl	323142847	jrf1	Jessica	Feilmeier	Alpha Phi		f	t	f	{}
v49xfuo37h2w6ro5ptdk	568195780	awarke	Abigail	Warke	Alpha Phi		f	t	f	{}
d088foxg1gxqtjigahk8	270965720	kjokinen	Kaitlin	Jokinen	Alpha Phi		f	t	f	{"Educational Speaker"}
fcye1laoj9wct39cuosz	202858676	sweuve	Sarah	Weuve	Alpha Phi		f	t	f	{}
l9q7qq5twebo6kd3cbup	683820165	presnell	Sidney	Presnell	Alpha Phi		f	t	f	{}
7dzzudtjlsdh6tcx3uqp	829373590	amjewell	Allison	Jewell	Alpha Phi		t	t	f	{}
ht5knknbnoz2j150a7if	122253131	ballard	Dorthea	Ballard	Alpha Phi		f	t	f	{}
1qot6s3miy24jtuyxfci	869888019	mlsims	Megan	Sims	Alpha Omicron Pi		f	t	f	{"Educational Speaker"}
an00pdvu5l434x66m6mf	686516831	amwilson	Amanda	Wilson	Alpha Phi		f	t	f	{}
y0dwrw4vw1ywbd2qplpg	620457838	amarasco	Alex	Marasco	Alpha Phi		f	t	f	{}
75m2ogn0hh19l3pgie2y	319619300	emilie	Emily	Branstad	Chi Omega		f	f	f	{}
elhio99yvfvbcc89yzgw	179195041	lowill45	Louis	Williams	Alpha Sigma Phi		f	f	f	{"Educational Speaker"}
p0uw3uom6ublgb0mlkw2	389500146	mjecklin	Mitchell	Jecklin	Alpha Tau Omega		f	f	f	{"Educational Speaker"}
0ndds7hce1k9hlbcrgdf	833073241	tiemeyer	Jason	Tiemeyer	Alpha Tau Omega		f	f	f	{}
ch5u0d9y5ao1v22dfhz3	249888660	pwatkins	Peter	Watkins	Alpha Tau Omega		f	f	f	{}
ctw4twcxfeez9rzb3jsc	191750559	jrbaedke	Joshua	Baedke	Beta Sigma Psi		f	f	f	{}
mqyne1x0l7n8wnyjb9qo	821895102	cgoetsch	Christopher	Goetsch	Beta Sigma Psi		f	f	f	{}
watqr2zkj8e4immndby3	795760966	jgremel	Joseph	Gremel	Beta Sigma Psi	Crew	f	f	f	{}
mrbwquu1776n3b8wd5g1	359379020	grluther	Grant	Luther	Beta Sigma Psi		f	f	f	{}
ilcyn9nkxwzauxds0w5x	738331622	keeganm	Keegan	McCarthy	Beta Sigma Psi		f	f	f	{}
787mwjvp31op9c55j0u0	692156465	jonahm	Jonah	Mueller	Beta Sigma Psi		f	f	f	{}
fxbpat1vanpjhay9nw9i	39934895	mulbrook	Nathan	Mulbrook	Beta Sigma Psi		f	f	f	{}
etrzi4luqwechlxm881r	893131263	kylerile	Kyle	Triplett	Beta Sigma Psi		f	f	f	{}
dybx50rvy5hlng95azgd	932292386	nsweich	Nicholas	Weich	Beta Sigma Psi		f	f	f	{}
crj0hik0pgmxd4cfxhqs	720256537	jvogts	Jacob	Vogts	Beta Sigma Psi		f	f	f	{"Educational Speaker"}
ug9gi9ty1el9cmh6biwp	637027419	bewood	Brian	Wood	Alpha Tau Omega		f	f	f	{"Educational Speaker"}
0589323rk1gb9lc3hr68	752655904	evanocon	Evan	O'Connor	Alpha Sigma Phi		t	f	f	{}
paz41b2q2xdr26v7n1tq	864948109	jcarter	Jad	Carter	Alpha Sigma Phi		t	t	f	{"Educational Speaker"}
mjmsh6cmnyl9dqa5u0c1	343881566	rheagney	Ryann	Heagney	Alpha Phi		f	t	f	{"Educational Speaker"}
hz2znnjrluc9bfp8lof1	782676895	sarastev	Sara	Stevenson	Alpha Phi		f	t	f	{}
vp8epmkxrr7vjndr2e0v	909646738	awolter	Adam	Wolter	Chi Phi		f	t	f	{}
e8fhn00ae9n6ods3c6z8	389317949	ccwhite	Casey	White	Alpha Sigma Phi		t	f	f	{}
x8wxb2gk47fj8xbekfzz	912385474	tstokes	Timothy	Stokes	Alpha Tau Omega		f	t	f	{"Polar Bear Plunge"}
o4ky22q6qachrk15i414	421451058	amonte	Alex	Montelongo	Alpha Tau Omega		f	t	f	{"Polar Bear Plunge"}
cnby8x83n06ascb1hrvg	289564303	nllopez	Nathaniel	Lopez	Alpha Tau Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
rzzcd0ee0eht62cfin0b	510270778	dakolson	Dakota	Olson	Beta Sigma Psi		f	t	f	{"Polar Bear Plunge"}
k4qvnk8qaimavvgl21tq	517957469	polinsky	Emily	Polinsky	Alpha Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
a8f22bz884zjl0sb9mhg	490156687	ekkacer	Emily	Kacer	Alpha Phi		t	t	f	{Treds,"Polar Bear Plunge"}
9yntmw45oh70fzvbomna	798988213	mliu	Mac	Liu	Alpha Tau Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
7ge2yzwq78pk101upxpy	941856941	mdp1	Michelle	Peterson	Alpha Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
un352g56cajm1lc2jvu6	388180793	rej1996	Regan	Jones	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
piax6qqkz7e5kgxp2qhz	827076306	jrhaf	Jordan	Haferbier	Alpha Phi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
0el3x4i21mo6emh8h198	998614617	kjohlin	Kelly	Ohlin	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
5oil5jomd78ihuv6x7a1	793266494	hannahjo	Hannah	Baysinger	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
fcnhgg14y127uev9s2vt	525201702	mekoepp	Marissa	Koepp	Alpha Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
lindg6kf9ch4tyqxr4yg	433791382	natifkov	Natalie	Ifkovits	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
d34qg6wkuxpq7pjdr37r	957267347	hhearn	Hailey	Hearn	Alpha Phi		t	t	f	{"Polar Bear Plunge"}
gd5ccssvgxgqqtognrqc	451967516	kfeld	Kierstyn	Feld	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
7syu0a7lz7tmiknlbokv	886426572	rmmallas	Rachel	Mallas	Alpha Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
kkri3j47l6gps272vhyi	829614786	brtrent	Brandon	Trent	Beta Sigma Psi		t	t	f	{Broomball}
8soze4cf72qfp3ckootv	491338864	snow	Gracie	Snow	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
wd78bq027suk5yybg9ug	101348282	djgoken	Dillon	Goken	Alpha Sigma Phi		t	f	f	{"Educational Speaker"}
3wuzno1ofilmgxs4gy9y	791118357	mkrodahl	Megan	Rodahl	Alpha Sigma Kappa		t	f	f	{"Lip Sync"}
kqv54ppzanodk6wp1nn7	636584976	henrichj	John	Henrich	Alpha Sigma Phi		t	f	f	{}
8s14pj1godjuergb6dw0	537868668	creswell	Alexander	Creswell	Alpha Sigma Phi		t	f	f	{"Educational Speaker"}
vnby44uxi1gyjzsm7b9n	112265153	ceciliav	Cecilia	Valencia	Alpha Phi		f	t	f	{}
ihn1d5tf3emfjjbnygln	340330014	cayang	Christy	Yang	Alpha Phi		f	t	f	{"Educational Speaker"}
yczq1sdfas03mzjpniwj	567466900	kdwarner	Kelsey	Warner	Alpha Phi		f	t	f	{}
avnqgzru8xorw2sjecoq	209229020	kuhrk	Kathryn	Kuhr	Alpha Sigma Kappa		f	t	f	{"Educational Speaker"}
3tw63ggpmw5wcodsg1si	39728689	annaward	Anna	Ward	Alpha Phi		f	t	f	{}
zjygw1r0ai3scd10305u	676789113	layounr	Renee	Layoun	Alpha Sigma Kappa		f	t	f	{}
ew4u7q6q0odu8119hz1p	167007841	lhill	Laine	Hill	Alpha Sigma Kappa		f	t	f	{"Educational Speaker"}
1a7mt4dxt1v901o0i51t	168693553	jmspeltz	Josie	Speltz	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker"}
4ov7upykc43vlfnm3vz5	797094330	pages	Page	Stanberry	Alpha Phi		f	t	f	{Basketball}
3igq8ni4h0cazm5xh36s	187238075	elainak	Elaina	Kamienski	Alpha Phi		f	t	f	{"Educational Speaker"}
t0pu8lwgqab6hxvx9yt0	574653079	adanhoff	Ali	Danhoff	Alpha Phi		t	t	f	{"Educational Speaker"}
nbacns4e34rltuximgcl	921637737	jsbenda	Jacob	Benda	Beta Sigma Psi		f	t	f	{}
xrfkqtfhdqesyqc0pon9	124045954	csthach	Carolyn	Thach	Alpha Phi		f	t	f	{}
bavn0xwfsbczxflals16	542210701	allmand	Darrell	Allman	Beta Sigma Psi		f	f	f	{"Educational Speaker"}
ubixwce914px48z7lhxy	846273449	cchristy	Caroline	Christy	Chi Omega		f	f	f	{}
393xqxomw0fkrkt2lo2d	934800867	clothier	Lindsey	Clothier	Chi Omega		f	f	f	{}
c9f0bmq2960cdsqxjbxp	757950217	ebergez	Emily	Bergez	Chi Omega		t	f	f	{"Lip Sync","Educational Speaker"}
e2n4cd0eemkvnchhfo53	15717722	cmtrom	Caitlin	Trom	Alpha Omicron Pi		t	f	f	{}
d0dyk0n1c1ozne8pwwvv	235303099	joseph1	Joseph	Anderson	Phi Delta Theta		t	f	f	{"Lip Sync"}
u3xra5zxwonk6c4bhou3	209283095	ajsather	Anthony	Sather	Alpha Tau Omega		f	t	f	{}
hcwauycn0w315tmqnm29	990785825	hbolanos	Hugo	Bolanos	Alpha Sigma Phi		f	t	f	{"Educational Speaker"}
ziv0jwh9g7kw9ymu6n29	100651576	skystaub	Schuyler	Staub	Pi Beta Phi		t	f	f	{}
stae3wd1slzkyllqzlpv	720233534	smcgrath	Sarah	McGrath	Alpha Sigma Kappa		f	t	f	{}
3nnqrbb3xwar6d6sa4ji	839136326	dlev	Daniel	Lev	Alpha Sigma Phi		t	f	f	{"Lip Sync","Educational Speaker"}
5tjrkwhvxsvb5dith1uf	464179740	Bremack	Breanna	Remack	Alpha Sigma Kappa		f	t	f	{"Educational Speaker"}
4glh3ulnedcdeztodwl1	5984979	tegavin	Tom	Gavin	Beta Sigma Psi	Central	f	t	f	{}
30tdw5qa8rwk6xa2uio6	951467545	eas	Emily	Smith	Alpha Sigma Kappa		f	t	f	{}
cd0np8vnj4zb3ejnm2ur	944914001	nreecy	Nickolas	Reecy	Beta Sigma Psi		t	f	f	{"Lip Sync","Educational Speaker"}
nxx5n5j9chazqyqx5g0m	336691384	jst	Jonathon	Thompson	Beta Sigma Psi		t	f	f	{"Lip Sync","Educational Speaker"}
f6r48o7i3rikdr7yaods	559721197	ian	Ian	Walsh	Alpha Sigma Phi		t	f	f	{}
28i8af1f9gu8nx73wbis	14217232	brian	Brian	Rivera	Alpha Tau Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
fjtlwgjq59xyfmbx6xx0	628718090	rguevara	Ricardo	Guevara	Alpha Tau Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
byg8475hjzre7st3bcx8	643826183	llillis	Logan	Lillis	Alpha Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
0zyxw5gh8n73ub5eexlp	402586212	ebabcock	Ethan	Babcock	Alpha Tau Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
qxj624djj5ndn7tdzi9e	950830913	dpruse	Dakota	Pruse	Alpha Tau Omega		t	t	f	{"Polar Bear Plunge"}
8co4qx07pnehyr78s8sq	195487319	tgbounds	Trevor	Bounds	Beta Sigma Psi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
7hg6tazle6t02tlah5fx	536722346	jsmith1	Jessica	Smith	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
tk4wowiszl7ra5onnlq4	625792203	ebruen	Emma	Bruen	Alpha Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
peubuf3se4l5h4s0vtod	190764598	eav	Emma	Venteicher	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
9l853i6in16ftn0y1686	273328079	mmalone	Mikayla	Malone	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
unjfq928gj6y6o4fhw6n	59645586	crosen58	Cody	Rosen	Alpha Sigma Phi		f	t	f	{"Polar Bear Plunge"}
qqftr1k5rvxxhnm5layz	675332658	eaengh	Emily	Engh	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
no12serl7ui26nmszotr	792612856	ncbretey	Natalie	Bretey	Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
a8m9uhjtgcuyuhoyzu75	195711516	ajbaran	Allison	Baran	Delta Zeta		t	t	f	{"Polar Bear Plunge"}
55mw8bd1o8bxp8z5klnu	55689634	johnsons	Samantha	Johnson	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
pg7zw4cff28ye6o4nxht	146115987	katielc	Katie	Canfield	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
dvmrfrdv4eo2t6ambypu	678248571	ajhunt	Alex	Hunt	Alpha Sigma Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
b635vg2n9gwp8zfyb9ex	757248516	zvk	Zachary	Van Kovering	Beta Sigma Psi		t	t	f	{"Educational Speaker",Broomball}
nn2nze721k69zasskow0	809134351	kwdevlin	Kyle	Devlin	Alpha Sigma Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
6t5am0ahaut8aobuvmkg	269350081	rkj	Ryan	Jacobson	Alpha Sigma Phi		t	t	f	{"Polar Bear Plunge"}
82bsed4bxmgfzaci1txs	498256787	jjlarsen	Joshua	Larsen	Alpha Tau Omega		t	f	f	{}
uo7h3876jrsx7meam2ol	940222283	ajfinch	Alexander	Finch	Alpha Tau Omega		t	f	f	{"Educational Speaker"}
yel0qsuk1tr1w72i0ob7	974236287	krodel	Liam	Krodel	Alpha Tau Omega		t	f	f	{}
kh0cg4ce21bz7yrsuuc1	646611991	relarsen	Ryan	Larsen	Alpha Sigma Phi		t	f	f	{"Educational Speaker"}
tixol84rkdsszsohrrts	401160760	jpevonka	Jonathon	Pevonka	Alpha Tau Omega		t	f	f	{}
wd02so8k8lu5717eq1o7	110386304	acrahn	Austin	Rahn	Beta Sigma Psi		t	f	f	{}
bu36qdyppqcxssflxkl1	124636537	tpalm	Tyler	Palmquist	Alpha Sigma Phi		t	f	f	{}
uwmrl74vt8acx1zcxu77	195796601	ktduncan	Kayla	Duncan	Alpha Omicron Pi		t	f	f	{}
mbtwrn06th2x6wpuz187	778887109	dpb	Daniel	Breitbarth	Alpha Sigma Phi		f	t	f	{"Educational Speaker",Basketball}
xgiokjmmdyppy1iqxxtz	411449103	hrobbins	Hayley	Robbins	Alpha Sigma Kappa		f	t	f	{}
s9hufg3e2zhi5rypkoxf	32819787	njandick	Nicole	Jandick	Alpha Sigma Kappa		f	t	f	{}
lianh3471cz258pxwjgt	706681003	rasimons	Rachel	Simons	Alpha Sigma Kappa		f	t	f	{"Educational Speaker"}
bp4ta3x0343md08quspe	685200537	mkelly1	Matthew	Kelly	Alpha Tau Omega		t	t	f	{"Lip Sync"}
pjzwtsz81lakhviqf50k	902593692	valeriev	Valerie	Vander Linden	Alpha Phi		f	t	f	{}
9rjscsovljiwrpxgyca5	32860848	dmhopper	Douglas	Hopper	Beta Sigma Psi		f	t	f	{}
usbx221hky8h6hoo6d22	836504669	kgtawney	Kendall	Tawney	Alpha Phi		f	t	f	{}
mosjnecrglrhdzxzf25p	965125161	edunagan	Erica	Dunagan	Chi Omega		f	f	f	{}
lg7j4sltik2bkenta2c9	49571522	mkearll	Mallory	Earll	Chi Omega		f	f	f	{}
b5enejfyqxnlsl21qdmy	701457757	jglienke	Jordyn	Glienke	Chi Omega		f	f	f	{}
o3hd96y59ql6sw8zia6d	868953085	abigailg	Abigail	Gonzalez	Chi Omega		f	f	f	{}
becjj2polyndbqbc5v9q	741831115	agrimm	Aubry	Grimm	Chi Omega		f	f	f	{}
3w6jguq4intntw85pvpq	782443662	ecgrote	Elle	Grote	Chi Omega		f	f	f	{}
shy1di5me9v316hh56hi	722485764	ejguis	Emily	Guisinger	Chi Omega		f	f	f	{}
4pq6hwv8jyjry6rzthoe	614187598	imhall	Isabel	Hall	Chi Omega		f	f	f	{}
ltf6dmblzv0k2zooui2f	998989018	aehall	Anna	Hall	Chi Omega		f	f	f	{}
lss5zm36tippy6ql8ez3	771032262	katieh	Katie	Hamilton	Chi Omega		f	f	f	{}
8mjuu5b5ooj2dkdf3m0f	100594494	tbhanna	Tessa	Hanna	Chi Omega		f	f	f	{}
fsqqb7zy0cpq2uy8vd0y	816263472	eleanor	Eleanor	Harkness	Chi Omega		f	f	f	{}
vj4ar2n5b530wjx5hff7	362088727	smharper	Sara	Harper	Chi Omega		f	f	f	{}
b7bqixr7p9frmtouuuw7	201123923	kjheiser	Katelyn	Heiser	Chi Omega		f	f	f	{}
c7fjvsppzuj7ie9zu61u	460720260	chenning	Callie	Henning	Chi Omega		f	f	f	{}
yzuneub22iv9l77gipqf	783919136	kherrera	Kerry	Herrera	Chi Omega		f	f	f	{}
soxwuzu8vajyc13v2iko	715020306	ahoiberg	Anna	Hoiberg	Chi Omega		f	f	f	{}
750vvmsn37tluw1hhncy	875959084	kpholt28	Katelyn	Holtkamp	Chi Omega		f	f	f	{}
db18lj8myb7l0w5i3ava	112502390	liverson	Lauren	Iverson	Chi Omega		f	f	f	{}
icivwgtwnqyd179rj97v	170975833	mlong1	Mariah	Long	Chi Omega		f	f	f	{}
cal6lxmp8jaxssq56zda	777571851	katec	Katherine	Christensen	Chi Omega		t	t	f	{Volleyball,"Lip Sync","Educational Speaker"}
635mm4zkixti0jjt9bn0	553829309	bagillis	Britt	Gillis	Chi Omega		f	f	f	{"Educational Speaker"}
8kdj253do8r2m1b4i05t	373764404	rvhall	Rachel	Hall	Chi Omega		f	f	f	{"Educational Speaker"}
sjkbtd3phygtnd3kzxiy	728379680	slleeds	Sierra	Leeds	Chi Omega		f	f	f	{"Educational Speaker"}
zc0kezaxd47eygk9sugs	293482189	mahoney	Evan	Mahoney	Beta Sigma Psi		f	t	f	{"Educational Speaker"}
j9qzmhv5om2aamgodq2f	973469522	laughery	Ethan	Laughery	Beta Sigma Psi		t	t	f	{"Lip Sync","Educational Speaker"}
ao6k3rz2vxh9e1bu3wpw	178215061	nmkimle	Nathan	Kimle	Beta Sigma Psi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
92dq4h3ohhz0k1q8oguc	888224433	bmedgar	Benjamin	Edgar	Alpha Tau Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
clzc7ph4yqm7shm0vugm	927025099	dellanl	Dellan	Llewellyn	Beta Sigma Psi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
wthdc4g363gmkbv9ia13	457888458	clarison	Caleb	Larison	Beta Sigma Psi		t	t	f	{"Polar Bear Plunge"}
0skj4p3yi7tspsbp274f	378144792	ajkacer	Allison	Kacer	Alpha Phi		t	t	f	{Treds,"Polar Bear Plunge"}
krgd3icv30czz8iy34n2	514319833	smhanson	Samantha	Hanson	Chi Omega		f	t	f	{"Polar Bear Plunge"}
99kj5riav19rm097b0rt	309829533	katyfish	Katy	Fish	Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
c3bs5vr0vgupkn5kzlhx	935023089	tmafnas	Tanna	Mafnas	Chi Omega		f	t	f	{"Polar Bear Plunge"}
ccpptl2dacfw2qetdf2j	68238170	smeggers	Stevi	Eggers	Chi Omega		f	t	f	{"Polar Bear Plunge"}
cx83811rfyzipyi2ikd1	958941984	atlove	Auntera	Love	Chi Omega		f	t	f	{"Polar Bear Plunge"}
mle4940c9g117ula0tuw	646937291	emoran	Ethan	Moran	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
n2vsb0jjxt4dnclvz7c4	312133845	cfarnold	Cora	Arnold	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
dy2581dopaqfszrkjm51	799365595	lmflatt	Lauren	Flatt	Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
lkg7apl69k2hrc0r6gx1	377858481	masonm	Miranda	Mason	Chi Omega		f	t	f	{"Polar Bear Plunge"}
tnrw3249k6qatjiuckfd	468464997	abbyb	Abby	Bergquist	Alpha Delta Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
etifqp05cwv6zq9g7fga	667749082	icgraham	Ian	Graham	Alpha Sigma Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
jphnckxsix4qyd9sa80w	98113015	rglenarz	Randall	Lenarz	Beta Sigma Psi	Crew	f	t	f	{}
r3kklxaj39bc6942p11a	201108936	jdslagle	Jared	Slagle	Phi Kappa Psi		t	t	f	{"Lip Sync"}
pq2p7zh167rxfzkfcdjg	204634450	bdsmith1	Bryce	Smith	Beta Sigma Psi		f	t	f	{}
jj7pt4rcbu11hb0aobet	180314170	sellman	Shannon	Ellman	Chi Omega		t	f	f	{}
dboa082mr0r2kryrqyeo	688325638	wheaton	Matthew	Wheaton	Beta Sigma Psi		t	f	f	{}
tkz1pugouq71vo0is1lm	293757464	anfolkmn	Andrew	Folkmann	Beta Sigma Psi		t	f	f	{}
l6zpj7tzcr2as8bj08hg	599841262	zjwatt	Zachariah	Watt	Beta Sigma Psi		t	f	f	{}
j7h0l5258mejg4zc57ni	371991620	astevens	Alec	Stevens	Beta Sigma Psi		t	f	f	{}
c8quu6je7oncfejevc7w	728357630	mslevan	Matthew	Levan	Beta Sigma Psi		t	f	f	{"Educational Speaker"}
360txt09ap3fdq0mfcv2	602446845	kmill	Kyle	Millburg	Alpha Tau Omega		t	f	f	{}
w943fr1o1xntl4pkpbu9	312876564	landons	Landon	Schulteis	Beta Sigma Psi		f	t	f	{}
salc2w3sk3znzvnvv4yv	409792383	smroth	Shannon	Roth	Alpha Sigma Kappa		f	t	f	{Volleyball}
tblw69qavuc2kuqgge50	702395718	cdbrown	Christopher	Brown	Alpha Tau Omega		f	t	f	{"Educational Speaker"}
vryckhx0sb1d2srza2tr	153724642	noahbz	Noah	Zouine	Alpha Sigma Phi		t	t	f	{"Lip Sync","Educational Speaker"}
v93x5j9z0wo5illjymv9	455199769	mjnelson	Michael	Nelson	Beta Sigma Psi		t	t	f	{"Educational Speaker"}
jet0wh2ybmcn0wx1daf3	490662216	zcallah5	Zebulun	Callahan	Alpha Sigma Phi		f	t	f	{"Educational Speaker",Treds}
wi26vnr8qshewqi4cm5i	659262632	cspar477	Carson	Sparkman	Kappa Kappa Gamma		t	t	f	{Treds}
ufyj66zyrgj2w1fc68xk	539868373	heble	Hannah	Eble	Chi Omega		f	f	f	{"Educational Speaker"}
4pjl43ya85qe0c6gju4c	104989885	sammatt	Samantha	Matt	Chi Omega		f	f	f	{}
0npen3zpf2zoeaktjdpp	554754239	mattison	Baylee	Mattison	Chi Omega		f	f	f	{}
ztdom17q1liakmgul98n	688812124	cmcclurg	Catherine	McClurg	Chi Omega		f	f	f	{}
92nwae1nyyokazzhw4i1	269172290	kalliem	Kallie	McSperrin	Chi Omega		f	f	f	{}
x2tredc83sqc9q7d2g53	716694979	sabinam	Sabina	Miller	Chi Omega		f	f	f	{}
k95yi8ym8f2xzz0xk5me	293096804	kmongar	Kenzi	Mongar	Chi Omega		f	f	f	{}
3pxb2d6vdtx1x5rfweq1	43818920	kmuller	Kali	Muller	Chi Omega		f	f	f	{}
pm4dngtaa9b917wuen50	835773939	neymeyer	Brooke	Neymeyer	Chi Omega		f	f	f	{}
793h2f6r992pspwfq5bu	287639352	lobrien	Lauren	O'Brien	Chi Omega		f	f	f	{}
rym56fzqxhoxpf7ou0s7	734220515	kaoneal	Keely	O'Neal	Chi Omega		f	f	f	{}
jeus1mn76y5dag8dpuji	136324265	aoakes	Ashley	Oakes	Chi Omega		f	f	f	{}
adt5mmyhu55sz6ie4h3n	912857946	eeopat	Erin	Opat	Chi Omega		f	f	f	{}
43v2y6om6l923hojqoi4	524973813	pearsonz	Zoe	Pearson	Chi Omega	Crew	f	f	f	{}
zcnjqqx5736q94ak7eos	112582495	sophiep	Sophie	Peterson	Chi Omega		f	f	f	{}
tfpvlidjry0b6gxtson4	789864075	kdreicks	Kaylie	Reicks	Chi Omega		f	f	f	{}
ty6rledjug4my7rwidgf	352404052	emsudlow	Emily	Sudlow	Chi Omega		f	f	f	{}
6bjx999yruc3ruxkk6sc	741708968	emtobin	Emily	Tobin	Chi Omega		f	f	f	{}
9wrpyp9jxlrckgk7sn30	709072364	awagener	Abigail	Wagener	Chi Omega		f	f	f	{}
s2pkxsfgnwhu5ym7ee5h	635874239	hew	Hannah	Williams	Chi Omega		f	f	f	{}
2j3c5pa0uz74ryel6vp4	288679391	lazeller	Leah	Zeller	Chi Omega		f	f	f	{}
buawd6j9e7r291mq5x78	953716764	zamirgh	Muhammad	Ghazali	Chi Phi		f	f	f	{}
63nw2blpsnwxof801sln	276863587	kmccarey	Katelyn	McCarey	Chi Omega		f	f	f	{"Educational Speaker"}
ejgzfqpbedi99lcno1yw	970513569	knm	Kelsey	McCarville	Delta Zeta		f	f	f	{}
2wmtl9dnn9ineabyeebr	451021646	mderaimo	Michael	Deraimo	Chi Phi		f	f	f	{"Educational Speaker"}
95dyzury0lmq4n2i2c94	968636689	cjporter	Charlotte	Porter	Chi Omega		t	f	f	{"Lip Sync","Educational Speaker"}
mrjxt40a9oo8rskh4tf2	190729539	moffittc	Caroline	Moffitt	Chi Omega		f	t	f	{Dodgeball,"Educational Speaker"}
6iyuwsm3xnmbyukhyjxi	289914689	qstigers	Quinn	Stigers	Chi Omega		f	f	f	{"Educational Speaker"}
lekkwl72f0gxfku09zis	490472996	lustoll	Luke	Stoll	Beta Sigma Psi		f	t	f	{}
08sdihhfmnj19tmjdmbh	320439119	cruz	Michelle	Cruz	Chi Omega		f	t	f	{}
5e2sm8veu6xzdpyz6dpa	818561744	sundholm	Alexander	Sundholm	Beta Sigma Psi		t	f	f	{"Lip Sync","Educational Speaker"}
28xcdrs73naimbehmr12	958127194	prentice	Joshua	Prentice	Beta Sigma Psi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
20nqrdgecd1j7vqftm3x	295967696	hsalgado	Hector	Salgado	Alpha Tau Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
1lvaxera84lq9xgnoqur	989028068	smsarel	Sydney	Sarel	Chi Omega		f	t	f	{"Polar Bear Plunge"}
fkbtpu1bnaq1kgasw238	179375196	kvinokur	Ketrin	Vinokur	Chi Omega		f	t	f	{"Polar Bear Plunge"}
fl22qi917xk3j6rgbl72	766956190	kjbauer	Katherine	Bauer	Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
coir6ym3yqgb3y34imp4	609600992	alstaton	Ashley	Staton	Chi Omega		f	t	f	{"Polar Bear Plunge"}
bwtvkdlf65qgsthfwvfu	548177662	btgeils	Brooke	Geils	Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
djnjh7ij4fhplfr837rn	315327012	srarick	Sydney	Rarick	Chi Omega		f	t	f	{"Polar Bear Plunge"}
jbozixk04gftybsdeby3	327841538	kcmikuls	Kayla	Mikuls	Chi Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
iwynz9egqd3mhkxujf11	94767673	natblock	Natalie	Blockhus	Kappa Kappa Gamma		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
nbjk669objbtcmp5deuf	968161221	stickler	Ross	Stickler	Alpha Tau Omega		t	t	f	{Broomball}
bg5cmdd3mqcaq1se7z2h	641494882	calebm	Caleb	Mueller	Beta Sigma Psi		f	t	f	{"Educational Speaker",Basketball,"Polar Bear Plunge"}
urv6hbi7atk5cw8fuq2y	876581749	kateroth	Kate	Roth	Chi Omega		t	f	f	{}
dtzwmc0sy68gz6c14euz	763439677	emartin	Emma	Martin	Kappa Alpha Theta		t	f	f	{}
gd47zhcj9rbuf523p7n6	213865676	njgarvis	Nicholas	Garvis	Lambda Chi Alpha		t	f	f	{"Lip Sync","Educational Speaker"}
pk72n6fjjog37njzeuat	20045025	marenner	Mason	Renner	Delta Tau Delta		t	f	f	{"Lip Sync"}
zuhsg3uxnahkox90mchm	654792166	axander	Alexander	Andringa	Beta Sigma Psi		t	f	f	{"Educational Speaker"}
r0jazjy9h5vlvam3ritz	884664781	jwhite	Jordan	White	Beta Sigma Psi		t	f	f	{"Educational Speaker"}
glscm45igby0btgmo723	338231922	jbaumert	Jonathan	Baumert	Beta Sigma Psi		t	f	f	{"Educational Speaker"}
kjt1b3thfmn2h8xkjhvp	524572073	echayes	Elizabeth	Hayes	Chi Omega		t	f	f	{}
dpsswwaxn5d0187la94q	239599388	am1	Alex	McClellan	Alpha Gamma Rho		t	t	f	{"Educational Speaker"}
vkpzql8vumn4r1tkd4aw	105071967	cjjones	Christian	Jones	Delta Tau Delta		t	t	f	{"Lip Sync"}
jv3kiw9bmyc8h1eqra5c	581118566	ksigvert	Kelsey	Sigvertsen	Kappa Alpha Theta		t	t	f	{}
yo9191j79ch0qccg3m32	850536687	caoder	Caitlin	Oder	Alpha Delta Pi		t	t	f	{}
m01muyqy20ysn4o30iza	822433612	aamcgill	Autumn	McGill	Chi Omega		f	f	f	{"Educational Speaker"}
1wpfy1e5w6f10hsoyzdx	189325136	arminm	Armin	Mesinovic	Chi Phi		f	f	f	{}
7geeae1q95g0v9vcqi30	351776425	ullas	Ullas	Prakasan	Chi Phi		f	f	f	{}
00bv6qepmu9dx0vahr60	107162091	jeanpaul	Jean Paul	Azzopardi	Delta Chi		f	f	f	{}
4no488y0apbjbf0ezeuc	943460538	shancet	Shance	Bagos-Taylor	Delta Chi		f	f	f	{}
epr8t2nf5a48u42jrcny	910779870	nicolasb	Nicolas	Boudreaux	Delta Chi		f	f	f	{}
i7f3rl3odkml9ltmi9vt	650625976	carroll1	Matthew	Carroll	Delta Chi		f	f	f	{}
y8cz3hvx279wycqwjhuy	819050260	shf	Samuel	Frandsen	Delta Chi		f	f	f	{}
9a0uvyi3vbn1srv7qq89	116570454	wjlukita	William	Lukita	Delta Chi		f	f	f	{}
1jeydnaif7ytrmrglri5	104538434	emmedvec	Evan	Medvec	Delta Chi		f	f	f	{}
7ct4eyzd74bxyzqxx6bs	150896746	cpearson	Cameron	Pearson	Delta Chi		f	f	f	{}
u9ofcpjsn90c8kv3hvs0	449353917	ams1	Alex	Silberstein	Delta Chi		f	f	f	{}
fst5zz1izfvdn4k3fpwq	348185838	jastuder	Jorden	Studer	Delta Chi		f	f	f	{}
3ou14emh98focdcxk7ii	784836080	thomasw4	Thomas	Waters	Delta Chi		f	f	f	{}
2jj27px16mqc0z1k1eo2	747886139	jbloom	Jenna	Bloom	Delta Delta Delta		f	f	f	{}
0ej0nthg4l788v09c9id	323137883	jillian	Jillian	Carlson	Delta Delta Delta		f	f	f	{}
j0kdbk5uudgrjpem13kp	270953711	dominicd	Dominic	Delfavero	Delta Chi		f	f	f	{"Educational Speaker"}
eaa2ms7hfhonbs0pojpl	965183219	mohd228	Mohammad	Darwish	Delta Chi		f	f	f	{"Educational Speaker"}
xt32bcaelod21yopzwaf	749297549	dwickham	Dakota	Wickham	Chi Phi		f	f	f	{"Educational Speaker"}
9sv974nbo70fpxqv4y9f	690241552	plrice	Parker	Rice	FarmHouse		f	f	f	{}
8m4r4kn23ax59a2pv28f	780846066	patrickl	Patrick	La Mar	Delta Chi		f	t	f	{"Trivia Blast"}
0qo3849jy3x3j18yohvq	384887534	vbruno	Victoria	Bruno	Delta Delta Delta		f	f	f	{"Educational Speaker"}
r7he8t4kq7cex7htkw7r	56335279	rcottini	Ryan	Cottini	Delta Chi		f	f	f	{"Educational Speaker"}
ga4vb8nwjzsa8eqtdorh	631158564	afaizal	Aria	Faizal	Delta Chi		f	f	f	{"Educational Speaker"}
2f1f48p884xpyj7m4ml8	903640753	trich	Tatiana	Rich	Chi Omega		f	t	f	{"Educational Speaker"}
ojuga961yy5o22ufqhgs	778303526	pltweed	Piepre	Tweed	Chi Omega		t	f	f	{}
blh32lqel0x595pwrphi	709009301	cmez	Christine	Mez	Chi Omega		t	f	f	{}
ws5pgahssf0r8tdr0ief	533281773	aeberg	Alexis	Berg	Chi Omega		t	f	f	{"Educational Speaker"}
vqnptow43u5u3havexq2	870335466	megsam	Megan	Samuelson	Chi Omega		t	f	f	{"Educational Speaker"}
7u77f74p1ju9awhoo4rv	618560943	akpope	Anna	Pope	Chi Omega		t	f	f	{"Lip Sync"}
7xj0crahsvh0b81ifwjy	522664162	jbennett	Jessica	Bennett	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
7ivvhcdtn5703fgcmg4i	646606985	djbriggs	Danielle	Briggs	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
exl0g3l8tj4ziimhksod	10313335	tebrown	Tate	Brown	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
vp6byy2fyiiyn6egyspk	766456691	jrperdue	Jeffrey	Perdue	Delta Chi		f	t	f	{Broomball}
haeqtajwzp564opsinwp	689371712	kayleed	Kaylee	Docherty	Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
cjdypx47nshylu83lims	901137261	laurenj	Lauren	Johnson	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
qm95jq0kdevpptq3olmu	322809514	tsteiner	Tyler	Steiner	Sigma Phi Epsilon		t	t	f	{"Polar Bear Plunge",Broomball}
91ryug0r5oh9se9kygdl	18993975	jamiej	Jamie	Johnson	Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
6vi01uipjk3o2noecygv	90211121	rfbailey	Rachel	Bailey	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
qz6bebkkb93u25meivxj	873977147	gafidler	Grace	Fidler	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
8mcfuhlp0j2uj595ifqy	173684511	jefinn	Jane	Finn	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
ci5g4kdwljwjvukvhyrn	390723333	idab	Ida	Borchardt	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
27so7wnmykv8068mgm2l	792702939	jiadiy	Jiadi	Yang	Chi Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
zc229fkofdg7hasqifl7	513700207	samm	Sam	Miller	Delta Chi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
gza5y6ro9apoeiymp9jp	281172892	atrover	Alex	Rover	Delta Chi		f	t	f	{Broomball}
cp6n0ljqnt5jiu60nu4y	319705415	gwknight	George	Knight	Delta Chi		t	f	f	{"Lip Sync","Educational Speaker"}
p78eo6ytqzw14sz9es69	534877368	mxnajlis	Max	Najlis	Delta Chi		t	f	f	{"Lip Sync","Educational Speaker"}
ugzyrk1x5lok45sotvxa	239774535	chughes	Claire	Hughes	Chi Omega		t	f	f	{}
g2ml42eoezrm88t07ddw	887199341	kmant	Kassandra	Manternach	Chi Omega		t	f	f	{}
8vwndz9t8ij62pghwz1z	148965841	heh	Hannah	Heathman	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker"}
1a41snd85q6hkp4sjee7	979034087	lyssaann	Alyssa	Powell	Chi Omega		f	t	f	{}
ed9ctrldl4gw7s3r7r5o	510000503	jamesonm	Madeline	Jameson	Chi Omega		f	t	f	{Dodgeball,"Educational Speaker"}
xjg1xw6pbmr9nmo69pkl	413339927	zndoyle	Zachary	Doyle	Chi Phi		f	t	f	{Basketball}
x9kybzp7uoseebxeazl7	941511571	encarter	Emily	Carter	Delta Delta Delta		f	f	f	{}
idtk8ovxsz17s1qwz81f	702199498	bkdankle	Brianna	Dankle	Delta Delta Delta		f	f	f	{}
iig8ue3ym60yylsxljkc	149750674	edempsey	Emma	Dempsey	Delta Delta Delta		f	f	f	{}
0al13xv1jhso6zdvj0ol	332219888	kldoc	Kelsey	Dockstader	Delta Delta Delta		f	f	f	{}
lk8pzgi7lryulyomyx0g	734858160	duckettl	Leigha	Duckett	Delta Delta Delta		f	f	f	{}
pnnj9t7dri6s171c1z06	969196228	cassidyf	Cassidy	Fleming	Delta Delta Delta		f	f	f	{}
da1tfg1nhjgshkrirn5c	93323269	fornaris	Rachel	Fornaris	Delta Delta Delta		f	f	f	{}
clwbm9wiyt1tre7loylm	798204407	mmhaskin	Makenzie	Haskin	Delta Delta Delta		f	f	f	{}
8x6aldfne8m7gg9h7ksf	757179423	pnkintz	Payton	Kintz	Delta Delta Delta		f	f	f	{}
2j0rmrkgvsd406z0faqv	934908975	brkramer	Brittany	Kramer	Delta Delta Delta		f	f	f	{}
yte7s7ajoqgjcs3csnyo	733940207	mishak24	Madison	Mishak	Delta Delta Delta		f	f	f	{}
tc0nxwbz7oq1wrxf1nq7	842064223	tmmurray	Tayler	Murray	Delta Delta Delta		f	f	f	{}
f0vppa0lhnbbmiin54da	108733625	jenardi	Janae	Nardi	Delta Delta Delta		f	f	f	{}
jsd1hjks8x4xblm5wknk	393100708	seduffy	Sadie	Duffy	Delta Delta Delta		f	f	f	{"Educational Speaker"}
9xzdui7lqmpbdnzmlft8	149388239	maddyj	Madeline	Johnson	Delta Delta Delta		f	f	f	{"Educational Speaker"}
21e6p1a80h8l4wll8346	879017139	ahoskins	Aliyah	Hoskins	Delta Delta Delta		f	t	f	{"Educational Speaker",Treds}
shlhn43owbdr138lrcr3	157370241	kennalee	McKenna	Larsen	Delta Delta Delta		t	f	f	{"Educational Speaker"}
tiaq7y5smoix1d84102d	930076147	amkrone	Abigail	Krone	Delta Delta Delta		t	f	f	{"Lip Sync","Educational Speaker"}
ikm61i3wpqp7txr1w6c8	950167218	brittnim	Brittni	McMonigal	Chi Omega		t	f	f	{"Lip Sync","Educational Speaker"}
tg2adnmmp71mh54f8jcv	412237826	lthiesse	Laura	Thiesse	Chi Omega		t	f	f	{}
cyj5y0jbbkpergpfthyr	426381997	ccorbett	Caleigh	Corbett	Chi Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
3h70wgysad2yclar9nsd	222409251	aebirch	Angela	Birch	Chi Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
25yhs4h6yhrg8jptawgo	913903991	abshimon	Abby	Shimon	Chi Omega		f	t	f	{"Polar Bear Plunge"}
jpcc751wbqoyvn9ff2c6	76779727	lapetina	Michelle	Lapetina	Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
detaubq08aux6pe0h0v1	271468261	carlyo	Carly	Overhiser	Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
hb83g26gwgd3424cfsgp	214229015	mehedges	Megan	Hedges	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
4uukh5598gycukpa36b3	674242569	caylaw	Cayla	Witte	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
oj7hy0yj1tjaisbjqr2p	209079871	kmb7	Kelsey	Burggraff	Chi Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
2s08uqmw67pvnu8duu8g	491404935	jabber1	Joshua	Bourassa	Chi Phi		f	t	f	{"Polar Bear Plunge"}
1b5lf37adhygm1rd8wsb	810235426	mlevens	Megan	Evens	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
sdcup3thgew50qj5njiw	490381920	tlarosee	Taylor	Larosee	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
sdgb6uqj33g2oe4tzdd5	830077272	jfgates	Josephine	Gates	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
6hz607263beek5hdisck	570365824	sefeehan	Sarah	Feehan	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
e8h678xvk88pwwvs9nh9	342387109	elaugh	Erynn	Laughlin	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
d1enkmfnwh8lrgqy7nyu	93138077	cgreen	Carolyn	Green	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
1bw56rlvt70zrk1rbag7	255210956	amanassa	Alexis	Manassa	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
x7uds7e8234gn9sgm2dj	370512174	amunn	Alexandra	Munn	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
8irusybd3cdzo44auapm	825075283	betsyann	Elizabeth	Colosimo	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
j25p22qdfrt1qwmw2iwf	708274591	hmayer	Hannah	Mayer	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
ktx1myzraviupb3aopz1	395277918	mndecker	Madeline	Decker	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
jficas2uzute0dbkxvuz	33032027	paigeg	Paige	Grossklaus	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
crykanwj3onuq8znxr3k	565891349	marye	Mary	Eganhouse	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
37lpijd92ul04a904i61	499233758	griffinm	Griffin	Meuwissen	Sigma Chi		t	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
j5pykckh21ysd0adimv8	837774938	tessh	Tess	Henderson	Delta Delta Delta		f	t	f	{"Educational Speaker",Broomball}
asmtp63gwzuo5uqbz88a	720806086	sbrandl	Samuel	Brandl	Chi Phi		f	t	f	{"Educational Speaker"}
jyemwcz4s6ib9ehnonqx	443277835	mcarlson	Marcia	Carlson	Chi Omega	Crew	f	t	f	{}
mbwsb1a18fyf8spjzlt0	525317818	cjgreer	Chandler	Greer	Chi Phi		f	t	f	{"Educational Speaker",Treds}
8t9xbiv9x58mclzdtsbq	686042393	emilyo	Emily	Olson	Chi Omega		f	t	f	{}
1io24f0pl7t5m31zy08q	5540535	kmlang	Kathryn	Lang	Chi Omega		f	t	f	{}
f7ilpmzivvlfqcwtdrmz	761043283	cmarie	Christina	Meissner	Chi Omega		f	t	f	{}
u14atjt3aszgv6cxv1vh	569403863	rheckman	Rebecca	Heckman	Chi Omega		f	t	f	{}
m6k4j9azo1gl9at3g703	706939233	kyliemcd	Kylie	McDaniel	Chi Omega		f	t	f	{}
kwyx0x62dhb1aj1q40lv	200002823	mrtalley	Maxwell	Talley	Delta Chi		f	t	f	{"Educational Speaker"}
2cauw1qnhr7mi7f8cosf	124949857	pinnella	Kathryn	Pinnella	Delta Delta Delta		f	f	f	{}
ki064ynqs8a963g15t3e	418875457	tpulliam	Taylor	Pulliam	Delta Delta Delta		f	f	f	{}
jdaviusrxy96rm4vk63z	966928988	sschmidt	Sydney	Schmidt	Delta Delta Delta		f	f	f	{}
3etr4f4w0l5ao0u45jh3	159874715	arstieg	Alisha	Stieg	Delta Delta Delta		f	f	f	{}
d4yjrytaktg01fzq8w2j	957665709	kelseay	Kelsea	Young	Delta Delta Delta		f	f	f	{}
jlozg6thsh5f9qaspdf7	130814724	ejzeman	Emma	Zeman	Delta Delta Delta		f	f	f	{}
tfk6e91948ca2ov89rva	664752088	rambert	Richard	Ambert-Torres	Delta Lambda Phi		f	f	f	{}
oeababmiobyu59cdlvwq	510248755	zthall	Zachary	Hall	Delta Lambda Phi		f	f	f	{}
9wojg9p3kdfkr625bsc1	120736640	mfwalker	Madison	Walker	Delta Delta Delta		f	f	f	{"Educational Speaker"}
ejlbi6dxygz0az9pd15b	879527649	jrwiener	Julia	Wiener	Delta Delta Delta		f	f	f	{"Educational Speaker"}
g5pwdx6wd7n4xak85ghv	915039125	edreams	Elizabeth	Reams	Delta Delta Delta		f	f	f	{"Educational Speaker"}
ixvcejfwou4qklbp5dpa	362577215	johannah	Johannah	Vittetoe	Delta Delta Delta		f	t	f	{Basketball}
wg2saqf97hb8kfdrh4cu	65530493	astecker	Ashley	Stecker	Delta Delta Delta		f	f	f	{"Educational Speaker"}
p4vwt5tfd4ak98p7ra2a	566376847	elenan	Elena	Neuhaus	Delta Delta Delta		f	f	f	{"Educational Speaker"}
jlwwvxuresa64p2h7jvx	623703080	aqvuong	Alyssa	Vuong	Delta Delta Delta		f	f	f	{"Educational Speaker"}
fsqipls6pug82e91hd4l	903093215	ryheider	Ryan	Heiderscheit	Delta Lambda Phi		f	f	f	{}
1dwj2a5cfhgp77fu6p8h	167016850	ckrebill	Christopher	Krebill	Delta Lambda Phi		f	f	f	{}
75x6dyr0vvly6lf1sz8w	946386441	hsanchez	Hector	Sanchez	Delta Lambda Phi		f	f	f	{}
9irt3zgm845n9zwgpurs	580641061	pascott	Parker	Scott	Delta Lambda Phi		f	f	f	{}
jvpg33twmv6xozy4ppoi	467762295	btspick	Benjamin	Spick	Delta Lambda Phi		f	f	f	{}
ghnig5jzhv9vqmri38c7	987110124	bawilson	Blake	Wilson	Delta Lambda Phi		f	f	f	{}
ukikzdn83gcjrr5h8jfi	201113913	abyoung	Alexander	Young	Delta Lambda Phi		f	f	f	{}
3i94w4w29vqe80aaq0hy	663442811	dbosch	David	Boschwitz	Delta Sigma Phi		f	f	f	{}
e8jig3olvufwwevdsn1i	607801194	cgh12	Catherine	Hennings	Delta Delta Delta		t	f	f	{"Educational Speaker"}
ojfr1gfqv5dx2qjd7eyz	134045912	kevdent	Kevin	Dentinger	Delta Chi		f	t	f	{"Educational Speaker"}
87xb9zvevl2x4bgfhb37	320411119	tmesser	Tanner	Messerli	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
eyqs7hax9oedqrl9zht6	309292984	mcoleman	Maggie	Coleman	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
i2de47l4d0gzfhezxiwz	357015659	pkwragge	Paige	Wragge	Delta Delta Delta		f	t	f	{Basketball,"Polar Bear Plunge"}
8bv6aeke91vxb4nmaw98	934615682	harrisj	Jade	Harris	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
yjrgi7q2620r0zqocfmc	698125428	nms1	Nicollette	Schneider	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
exic96b2hguot42okszf	853857032	owotis	Olivia	Otis	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
s2hfi9f7g4l9yqlltjpa	387894575	elenap	Elena	Petranick	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
sctruydrmunbs286m07s	764976212	kwolever	Kelsi	Wolever	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
4o5f45rmdnhbu7e5ea7x	998627630	sarahv	Sarah	Vinchattle	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
c93fjeiiyc4723py8xmj	788403635	mlroese	Morgan	Roese	Delta Delta Delta		f	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
0ogaof3btcqzxboigdr1	166016851	cinthiaw	Cinthia	Wilkinson	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
7ynqstxtlubae3r5pz0j	649307679	mjkey	Mackenzie	Key	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
7tf8rjlm2q253p95qq2l	125525428	mraja	Meenu	Raja	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
fxiegewotrm0dbiozx79	776779023	nstetzel	Noah	Stetzel	Chi Phi		f	t	f	{"Polar Bear Plunge"}
k37vn5x2l0qsnz205ve2	170371234	jareno	Jade	Reno	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
x95lhahs7tqzjgdj34i3	266333098	oliviap	Olivia	Prestrud	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
n6toofu0fxldq8tb4g2x	975967013	gracen	Grace	Nelson	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
vhqgvqsmqr99o618r76l	368034691	kfhays	Kassidy	Hays	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
p42xkudonfshuti42uzy	490814336	lwalters	Lily	Walters	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
5mtci5vtvzxicmeweakk	649276628	cakenyon	Carli	Kenyon	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
a277ves0dvg1qt317jzn	758967209	allenj	Allen	Johnson	Delta Chi		f	t	f	{Broomball}
9pr1dz4s8i5dm9zjs1hn	621759138	jprovost	Jordan	Provost	Chi Phi		f	t	f	{Basketball}
awkb61l2gjwdgstdqyab	228440212	ckisling	Carson	Kisling	Delta Chi		f	t	f	{"Educational Speaker"}
162edyte7vw7b02qnoaw	695203509	acich	Adam	Cich	Delta Chi		f	t	f	{"Educational Speaker"}
wgnfirwtzqy28dyrjybp	858140306	joshuam	Joshua	McPherson	Delta Chi		f	t	f	{"Educational Speaker"}
t1215xes73p86x0pueub	820162343	wharper	Warren	Harper	Delta Chi		f	t	f	{}
rmrpjo963vjvd4i068cz	995726732	jreeves	Joseph	Reeves	Delta Chi		f	t	f	{}
bpd4x9edcumigjg0r4x1	245422201	mafrench	Maren	French	Delta Delta Delta		f	t	f	{}
ezp2az0yauf2k94qjnkt	199657458	natalieb	Natalie	Bennewitz	Delta Delta Delta		f	t	f	{}
b0p19zbyn5b3anx7p5of	864579716	masonc	Mason	Carnahan	Delta Sigma Phi		f	f	f	{}
y3tsgkioh0ls887vi6xg	588650062	jpdaniel	Joseph	Danielsen	Delta Sigma Phi		f	f	f	{}
cxwmioy39ostxgz8cm7w	639000402	jduong	John	Duong	Delta Sigma Phi		f	f	f	{}
qrwji3tj0xmo1v27xmm7	898556684	jjfajfer	Jameson	Fajfer	Delta Sigma Phi		f	f	f	{}
om51bc535hgi5pcx70ma	586021457	jayk	Jayesh	Karani	Delta Sigma Phi		f	f	f	{}
ckcps4nyqwe1ziuxgbxp	68684651	smmarten	Scott	Marten	Delta Sigma Phi		f	f	f	{}
1okztfq3qhytop02i2aj	984521538	mjmejia	Matthew	Mejia	Delta Sigma Phi		f	f	f	{}
y1z19r9y39420iolsa83	256853597	broc710	Brendan	O'Connor	Delta Sigma Phi		f	f	f	{}
sjkuz4oi4jze7upgt887	157932798	sesmith	Spencer	Smith	Delta Sigma Phi		f	f	f	{}
jbt7ggcumoy4f8hin25o	289098977	wigton	Michael	Wigton	Delta Sigma Phi		f	f	f	{}
9cp1a9ee07t32d5q2xjn	425898496	ausand	Austin	Anderson	Delta Tau Delta		f	f	f	{}
f589a03sp1tjxexgz8jz	843031189	coreya	Corey	Anderson	Delta Tau Delta		f	f	f	{}
r5q1jf32iskeihlenqx8	678047370	jgbohn	Jackson	Bohn	Delta Tau Delta		f	f	f	{}
bl4n3gf3hshohnx3v5eo	290923996	borhauer	Zachary	Borhauer	Delta Tau Delta		f	f	f	{}
jwoytiwc8ggssdzlppcu	643485879	carrell	Chase	Carrell	Delta Tau Delta		f	f	f	{}
1kznqx16fuitw1ykr5rj	429692263	kacombs	Kyle	Combs	Delta Tau Delta		f	f	f	{}
ajwddzf3920mbv1axe1u	54849860	kedsey	Kyle	Edsey	Delta Tau Delta		f	f	f	{}
b56lawmj6etvo20vx4k2	538412896	mmevans	Michael	Evans	Delta Tau Delta		f	f	f	{}
wnbtyhvgbs9il3rbxqfa	275992745	josephf	Joe	Fairchild	Delta Tau Delta		f	f	f	{}
2p8yxa6g8dydja7hvgku	2733731	willisf	Willis	Fieldsend	Delta Tau Delta		f	f	f	{}
g6bwpolszpq0u28zftzi	638337723	belfanti	Dominic	Belfanti	Delta Tau Delta		f	f	f	{"Educational Speaker"}
e8q9jl97xt5vrw7gn4wz	962389455	jasonp	Jason	Peters	Delta Lambda Phi		f	t	f	{"Lip Sync"}
cuwwwcex9j6as2tg6vc6	75434359	faxvog	Matthew	Faxvog	Delta Sigma Phi		f	t	f	{"Lip Sync"}
kiajgdwm7z4i0ai4y1hw	192400208	cwfriday	Christian	Friday	Delta Tau Delta		f	f	f	{}
yfrj76o63c2uin0v17tg	510056603	lrgreen	Lowell	Green	Delta Tau Delta		f	f	f	{}
tr6is91doqcp2eshpttb	434743309	chageman	Colton	Hageman	Delta Tau Delta		f	f	f	{}
de134w8kdi408hbinp89	580613033	jdhahn	James	Hahn	Delta Tau Delta		f	f	f	{}
na5z7rjacxo0dtmssfj4	345789444	isucrh08	Cory	Hamling	Delta Tau Delta		f	f	f	{}
k6jx97h9f0w1cqmktpwm	216016801	walterj7	Walter	Jankowski	Delta Tau Delta		f	f	f	{}
k20qi5n567nipeific7p	891977114	kohlbeck	Jack	Kohlbeck	Delta Tau Delta		f	f	f	{}
48x5pnxt5yvjiaacz9kj	726545848	clantz	Carter	Lantz	Delta Tau Delta		f	f	f	{}
7i8rrf56zs85wwskz3a5	923235313	nlensing	Nicholas	Lensing	Delta Tau Delta		f	f	f	{}
j1k37fjzavj43r0e120v	181645464	daveleo	David	Leo	Delta Tau Delta		f	f	f	{}
nb7aqj2chnvhxxk4rm4u	622084463	shmoss	Scott	Moss	Delta Tau Delta		f	f	f	{}
9igufba37kulcc0svmjq	359233875	pneumann	Peter	Neumann	Delta Tau Delta		f	f	f	{}
ffjk53zfvi4or6yb48k4	146505359	kdnewsom	Kyle	Newsom	Delta Tau Delta		f	f	f	{}
zvwa06zy0hvern9xq3kl	134758644	octhomas	Olivia	Thomas	Delta Delta Delta		t	f	f	{"Lip Sync","Educational Speaker"}
81c1qzrx9f4siqwo1hg1	159227068	allieh	Allie	Harrington	Delta Delta Delta		f	t	f	{"Educational Speaker"}
92i1c6y8qo2ome08lrqm	200116917	asposeto	Anna	Sposeto	Delta Delta Delta	Central	f	t	f	{}
yf8hi1ifnrs2djliiurx	202046845	sedonad	Sedona	Dowd	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
64as6l9thrfog31nfdvq	924927042	shear	Shea	Ryan	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
9v67z5pwr5jf9z41fbr4	706108403	jrarndt	Jennifer	Arndt	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
2dp4lnnp4op0fj5b19au	628155555	arwitt	Allyson	Witt	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
o3vjdy1xznvjnspvae1w	879976097	aridgway	Amanda	Ridgway	Delta Delta Delta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
xyv899r9agke6zlz0ctc	516137646	mereece	Michaella	Reece	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
riubuljhg3hjtz5zemh4	83685602	hbwalsh	Hannah	Walsh	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
eu9vx1fw5habf1zy6l3z	895066199	msopczyk	Molly	Sopczyk	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
w3nzaljrkhnu2vlgu2ku	942066125	njwalker	Nathan	Walker	Delta Chi		f	t	f	{"Polar Bear Plunge"}
gp76cllw6hyc6ktrqcml	755945190	bjfeltes	Benjamin	Feltes	Delta Sigma Phi		f	t	f	{"Polar Bear Plunge"}
2kenw92k6abn0eo0rrpq	784411628	collinc	Collin	Christensen	Delta Sigma Phi		f	t	f	{"Polar Bear Plunge"}
08tsqevr3lzm8xqz5vhp	193708515	kmbohn	Kellen	Bohn	Delta Tau Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
ocna9xj354fee7kzz2m4	432289858	jhr8713	Ha Lim	Jeong	Delta Sigma Phi		f	t	f	{Broomball}
eyvprrraw71wl29wq1mg	584823267	roshand	Roshan	Dias Abeygunawardena	ACACIA		f	t	f	{"Educational Speaker"}
me38167wsm6vsnrf16ag	764736997	atwick	Amy	Twickler	Delta Delta Delta		t	f	f	{"Educational Speaker"}
oyqe5uq6aa1yv5x2zkiq	420059663	abwolfe	Alexander	Wolfe	Delta Sigma Phi		t	f	f	{"Lip Sync"}
58msougaqfizvoeu7pmn	571906411	skinner	Lauren	Skinner	Delta Delta Delta		t	f	f	{}
zgdf9zfjkuo8iuogs6vh	217481295	spick	Sydney	Pick	Delta Delta Delta		t	t	f	{}
tt2wa5h20ykmzo8q5jww	911204294	mniehaus	Michael	Niehaus	Delta Tau Delta		f	f	f	{}
pwjv34sxnreojgj624of	993111160	spencerg	Spencer	Griffith	Delta Tau Delta		f	t	f	{Dodgeball}
kmn4oohyr0uhu6jp7z58	180061882	nparisi5	Nicholas	Parisi	Delta Tau Delta		f	f	f	{}
kwzfjaannezbezj3rx0c	847305459	mjpeters	Matthew	Peters	Delta Tau Delta		f	f	f	{}
lyg2cnyhsljdnndxl113	345207863	nkp	Nathan	Peterson	Delta Tau Delta		f	f	f	{}
gbzae0log5qy3drklu1a	159560401	richter	Samuel	Richter	Delta Tau Delta		f	f	f	{}
5ff0121lkvmylwrlcfcs	757858121	richterc	Charles	Richter	Delta Tau Delta		f	f	f	{}
lumqtxe5ywgkshonqjws	937409473	nsaigal	Neil	Saigal	Delta Tau Delta		f	f	f	{}
w5eri4qjoh93noq9po7i	705976295	jmfrei	Jason	Frei	Delta Tau Delta		f	f	f	{"Educational Speaker"}
we2vvhfrsmbxxytvoqrm	831858027	smithg27	Gavin	Smith	Delta Tau Delta		f	f	f	{}
l3h2bw7mdg8n2mgeovtm	117105013	cmspruck	Cole	Spruck	Delta Tau Delta		f	f	f	{}
pbrx0buwjswr83mlq346	279859580	rjtaets	Ross	Taets	Delta Tau Delta		f	f	f	{}
u4ejqlhe75js6bgbcrlt	82344262	markv10	Mark	Vormezeele	Delta Tau Delta		f	f	f	{}
ngo1l0unkihu4jxd0rjk	634280674	WILLPETE	Peter	Williams	Delta Tau Delta		f	f	f	{}
7g4iq7dwx1qbdan3e6yk	297481184	kgw	Kyle	Winterbottom	Delta Tau Delta		f	f	f	{}
2kekee5tktkelpdfdxtx	60555495	mbwittig	Maxwell	Wittig	Delta Tau Delta		f	f	f	{}
02fm78khgf1mr8uj8qt7	119125006	rlyung	Ryan	Yung	Delta Tau Delta		f	f	f	{}
eu94ds7evpogk5mlgpvl	874746917	aamid96	Mir	Ahbab	Delta Upsilon		f	f	f	{}
ur9wssafrmzianlsjwp5	741056316	jfelland	Joshua	Felland	Delta Upsilon		f	f	f	{}
40405txrnlpy2mvusk2y	65897864	rwgabe	Ryan	Gabrielson	Delta Upsilon		f	f	f	{}
w0ctbce3c5yiuk04bgmn	394182789	josephg1	Joseph	Gunkelman	Delta Upsilon		f	f	f	{}
ny89lp57p0zaqjo7li4l	406347942	nphalst	Nathan	Halstead	Delta Upsilon		f	f	f	{}
as6cqk0qv5az04c8gn90	680447768	dhbosse	Douglas	Bosse	Delta Sigma Phi		f	t	f	{}
ppgbhiilgm2uc8nrzv69	17673656	rma24601	Renee	Alexander	Alpha Sigma Kappa		f	t	f	{}
8f7jxtharzstt1gtz0n4	639069459	bsp	Brett	Peterson	Delta Tau Delta		t	f	f	{"Educational Speaker","Lip Sync"}
wtwd2vgmvkdp2fkdgws9	914692779	jdwick	Joshua	Wick	Delta Sigma Phi		t	f	f	{"Lip Sync"}
plffepdhtg7ui9hwmsnm	537087579	jprockey	Jacob	Rockey	Delta Tau Delta		t	f	f	{}
n7r9q1kz5743fxze3h4h	134995881	conham21	Connor	Hamilton	Delta Tau Delta		t	f	f	{}
ifj6hwwwnpg49vofbmxw	187741554	bll	Brandon	Lockhart	Delta Lambda Phi		t	f	f	{}
iezfxybfu0ygrzow3jsf	434907502	schedler	Robert	Schedler	Delta Sigma Phi		t	f	f	{}
6qafw85s8t6afvcpnj14	97947850	giebel	Anthony	Giebel	Delta Sigma Phi		t	f	f	{}
j4tarnq57k4qtk0d0qzm	803900128	dcgrace	Devon	Grace	Delta Tau Delta		t	f	f	{"Educational Speaker"}
92bdzokus9wbwolov7jv	443243825	addisonb	Addison	Brockette	Sigma Chi		t	t	f	{"Lip Sync"}
9m11x7lma71z2n01d9fi	365749403	njriegel	Nicholas	Riegel	Delta Sigma Phi		f	t	f	{}
icc5frzx6mo2a66tqio1	946671750	ashleyrl	Ashley	Livermore	Alpha Phi		t	t	f	{"Educational Speaker"}
znyjhxl775wrxb2s6jsq	994808815	jtbergan	Jason	Bergan	Delta Sigma Phi		f	t	f	{}
all3srau03xrl4ojoxy8	436770362	javerill	James	Averill	Delta Tau Delta		f	t	f	{}
gtfxzl50enpf2m94vw9k	35805799	caldag	Carl	Aldag	Delta Tau Delta		f	t	f	{}
wmoskj9zqucllmrbqrd0	652366743	ibroyles	Ian	Broyles	Delta Sigma Phi		f	t	f	{"Lip Sync"}
9wlnjac8gjnsqvf6ye7t	737176440	klroe	Kasey	Roe	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
gku6jktxpyrb1a2i4fei	381162782	jlspeck	Jessica	Speck	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
0xfjmci42g9xhzxpfdoo	135526391	kmzachar	Kaitlin	Zachar	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
todm1bzgtynew542csp1	643387770	vaughan	Abigail	Vaughan	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
k2855nqtq6mnholsfxtw	497956484	kirstenl	Kirsten	Larson	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
24rp5twtwlb9dbctwwqc	877755879	emmavan	Emma	Vansickle	Delta Delta Delta		f	t	f	{"Show Me The Greeks","Lip Sync","Polar Bear Plunge"}
86psvoriywrwldqorjvu	928507580	crbutler	Courtney	Butler	Delta Delta Delta		f	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
ggnhvsu1kb6eosebn6b3	563013476	cflewis	Clarissa	Lewis	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
gnwq8mh7pyhwxk7zye91	823321499	hleech	Hannah	Leech	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
t92jzj5i8lxlal6eck3n	30214184	jsscope4	John	Scopelliti	Delta Sigma Phi		f	t	f	{"Polar Bear Plunge"}
tyqpymrevq73edkf8mku	461978517	cburt	Caleb	Burt	Delta Sigma Phi		f	t	f	{Volleyball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
eylafvx3ovdeitdla32x	652445794	baboone	Brianna	Boone	Delta Delta Delta		f	t	f	{Treds,"Polar Bear Plunge",Broomball}
qkx86ylfsqjtwfj9vy7a	826555758	cgrassel	Cristopher	Grassel	Delta Tau Delta		t	t	f	{"Lip Sync",Broomball}
p1ev7aentyc2y3bhpuh2	697634967	pjc	Peter	Cassioppi	Delta Upsilon		f	t	f	{Broomball}
kn0yym0gtqyohyq4azia	401905504	adopp	Alexander	Doppenberg	Delta Sigma Phi		f	t	f	{}
uh1tzekwt3y2wq3uh90h	992239248	mll23	Morgan	Lichtenstein	Delta Sigma Phi		f	t	f	{}
f0cdfjg2y8wf2ze9gnwl	50559509	dbm	Daniel	Martin	Delta Sigma Phi		f	t	f	{"Educational Speaker"}
nfmgi62ky01913493bkq	270353083	cmcoyle	Casey	Coyle	Delta Sigma Phi		f	t	f	{}
pvzeulysz2gwrxar90by	679019341	saesch	Samuel	Esch	Delta Sigma Phi		f	t	f	{}
s6dmbajmzvwq90jsgxqf	745291547	bbjack	Benjamin	Jackson	Delta Sigma Phi		f	t	f	{}
4zgssy7x1cufyg8ceplm	884992108	hoodjer	Derrick	Hoodjer	Delta Upsilon		f	f	f	{}
4s3h85awg2ajfblf05im	314972658	jahn1023	David	Jahn	Delta Upsilon		f	f	f	{}
use7vnke7u8r1dgacuzf	367815448	mcmahon2	Andrew	McMahon	Delta Upsilon		f	f	f	{}
mbsjn6ymhm8x6898ngso	183734551	dustinm	Dustin	Meyermann	Delta Upsilon		f	f	f	{}
cofxaxx82t3pzm2ppvzz	794333540	jtmills	John	Mills	Delta Upsilon		f	f	f	{}
076n7a09zwnwsxxxbx2b	403044642	mmussell	Maxwell	Mussell	Delta Upsilon		f	f	f	{}
mqu2yhu4c70678hefu74	388523158	jdswan	Jack	Swanson	Delta Tau Delta		f	f	f	{"Educational Speaker"}
03j5gyjcwnv1dycdy0eh	777380604	jspitz	Jacob	Spitz	Delta Tau Delta		f	f	f	{"Educational Speaker"}
zn09mvylykdxxhscikdi	158405271	sgreine	Stetsen	Greiner	Delta Upsilon		f	f	f	{"Educational Speaker"}
16qh5qq5dwvxou3al5sz	686123465	rebarron	Reed	Barron	Delta Upsilon		t	f	f	{"Lip Sync","Educational Speaker"}
6aockz0nygs0b9cyu9zk	218355169	bashaw	Blake	Shaw	Delta Tau Delta		f	f	f	{"Educational Speaker"}
o31sjl3wzql65slgex8p	241144928	ldnolan	Lavail	Nolan	Delta Upsilon		f	f	f	{}
n9bqhb958v614ztwwrag	722906184	mnobrien	Matthew	O'Brien	Delta Upsilon		f	f	f	{}
5dq0p012li5jfr3lqmbn	141315174	bpainter	Bryson	Painter	Delta Upsilon		f	f	f	{}
am8jmuz4nx08bwq4rnd0	228741513	matheman	Matthew	Paulaitis	Delta Upsilon		f	f	f	{}
kk3twux2ae2yq4elfbkc	209400191	bsp594	Brett	Peterson	Delta Upsilon		f	f	f	{}
awmwr52rsyphobqs2ei0	393831438	DanielP1	Daniel	Plantamura	Delta Upsilon		f	f	f	{}
m5kwhqz186eqaha8ey2v	329838509	rusciano	Mark	Rusciano	Delta Upsilon		f	f	f	{}
c84okh9csiifgj3wl7pt	339262924	paulslad	Paul	Sladovnik	Delta Upsilon		f	f	f	{}
5b8kaxhfknf6wmvyug92	719118400	psogard	Patrick	Sogard	Delta Upsilon		f	f	f	{}
crwzkzx0km73n0ikaomg	268582314	pcsperry	Peter	Sperry	Delta Upsilon		f	f	f	{}
urz543dlo86qifwzl5bj	255392137	rsteph	Ryan	Stephens	Delta Upsilon		f	f	f	{}
98z3f58p0s5dqkzkzqp4	423612189	msuvorov	Mikhail	Suvorov	Delta Upsilon		f	f	f	{}
0n9zlprdgo9a46sj1rsj	856798975	rwitek	Ryan	Witek	Delta Upsilon		f	f	f	{}
gsqm1597j2xqhn6tm6b0	326756456	ztworly	Zach	Worthington	Delta Upsilon		f	f	f	{}
72kxmdlj6rat00hxxj7r	808615836	sbradway	Samantha	Bradway	Delta Zeta		f	f	f	{}
63e97q4g1c797w3aggp1	261178918	jecale	Jacqueline	Cale	Delta Zeta		f	f	f	{}
ahc925wsuwz1i2inqwdn	982428471	jakijoy	Jacqueline	Cavins	Delta Zeta		f	f	f	{}
7p201deodw12pgdpj9c4	802383634	jdemarco	Jenna	DeMarco	Delta Zeta		f	f	f	{}
aw99ope2487k8q8fzc3s	404673296	gdobbins	Grace	Dobbins	Delta Zeta		f	f	f	{}
g49vbd4xwfzs1pj4osrc	426469043	twwilson	Tait	Wilson	Delta Tau Delta		t	f	f	{"Lip Sync"}
dxjm701ypcpnqcd79agc	140294186	cpnixon	Clifford	Nixon	Delta Tau Delta		f	t	f	{Basketball}
8xwm892z7og54ao9o280	992405479	tccork	Trent	Cork	Delta Tau Delta		f	t	f	{Volleyball,"Educational Speaker"}
ljv6lc0kg99nk5hg55l3	809655871	tham32	Trevor	Hamilton	Delta Tau Delta		f	t	f	{}
l00ty90egefpjfd3bigz	869632793	kenyon	Kenyon	Brown	Delta Tau Delta		f	t	f	{}
bjpi1wsuofnybs5gx1xo	114810696	cdjensen	Cooper	Jensen	Delta Tau Delta		f	t	f	{"Educational Speaker"}
7excznm0e8lr96fp94fb	439390971	ckipper	Chase	Kipper	Delta Tau Delta		f	t	f	{}
otfngu3l91543b2pgvaf	257105849	zelliott	Zachary	Elliott	Delta Tau Delta		f	t	f	{}
88feudh4v9e2rv1clwij	729386658	sbcrow	Scout	Crow	Delta Tau Delta		f	t	f	{}
a77ohhh5ag908sj3flb9	75400357	maberg	Mason	Berg	Delta Tau Delta		f	t	f	{"Lip Sync"}
rew53yahze3z576e3u0a	615086472	cwhitham	Cody	Whitham	Delta Sigma Phi		f	t	f	{}
m7tcp3pul8su8qbjhq1w	289505216	dcassatt	Dominic	Cassatt	Delta Sigma Phi		f	t	f	{Basketball}
ahl7tb6fd5lt34cq0gwg	85228143	jbernier	Jacob	Bernier	Delta Tau Delta		f	t	f	{"Educational Speaker","Lip Sync"}
cp92o4cwmdumzrq75jpw	370661291	dgvlcek	David	Vlcek	Delta Sigma Phi		f	t	f	{"Karaoke 1st Cuts"}
e8eayzryxp6sx9c8m8v5	662730096	mscronk	Michael	Cronk	Delta Tau Delta		f	t	f	{}
k3ds72q2besh0rlplae1	150593443	seanpaul	Sean-Paul	Stickelman	Delta Sigma Phi		f	t	f	{"Lip Sync","Polar Bear Plunge"}
0qgb11i97tcjacetef0z	869730887	sjkofoot	Samuel	Kofoot	Delta Upsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
tbj5xx3oherhbkh5pf38	871157311	rhgates	Robert	Gates	Delta Upsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
hindy6sfggfc0ja4v6i9	257989759	johanson	Riley	Johanson	Delta Upsilon		f	t	f	{"Polar Bear Plunge"}
25ebfnq9geytiu502ubr	390031642	asduve	Alexis	Duve	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
oqwcurzp7kiyxt7gzrfo	249439190	rsgallus	Ryan	Gallus	Delta Sigma Phi		f	t	f	{"Polar Bear Plunge"}
55vus60fasb7camrqbcm	248189970	zaeiles	Zachary	Eiles	Delta Sigma Phi		f	t	f	{"Polar Bear Plunge"}
4dqa9ucklej5kb13kj52	726197472	alexbh	Alex	Harrison	Delta Sigma Phi		f	t	f	{Broomball}
q0mm3cbjr2od1n39pild	800557830	hanusaj	Austin	Hanus	Delta Tau Delta		f	t	f	{"Lip Sync",Broomball}
celdfi5rwj5cny4m73mq	672942294	pmweiss	Peter	Weiss	Delta Tau Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
hqws4at7zyknwx6tkoia	731590860	dmbergan	Dalton	Bergan	Delta Sigma Phi		f	t	f	{}
edmq6dbrvt9v80184gje	311350039	tcarrell	Tucker	Carrell	Delta Tau Delta		f	t	f	{"Educational Speaker"}
tityxc285v585yed9bp5	900106236	nhaguewo	Nicholas	Haguewood	Delta Tau Delta		f	t	f	{}
y3mck746gsqpwqnn7mqf	266250985	kylemort	Kyle	Mortensen	Delta Tau Delta		f	t	f	{}
9d6c3gx1hnb80o8speua	496113709	casejot	Jordan	Case	Delta Sigma Phi		f	t	f	{}
steqag65skhrdtbd0qyj	245682457	sethv	Sethsy	Vongpanya	Delta Sigma Phi		f	t	f	{"Lip Sync"}
v2k0ydhg6mvgyjd1lnxy	981442462	kreverly	Katherine	Everly	Delta Zeta		f	f	f	{}
nw2sa1hh6ketky5qbqy1	954579626	bpaby	Brandon	Pabyanskus	Delta Upsilon		f	t	f	{Dodgeball}
a7z0srt38oshh54ba9kw	742597883	alixg	Alixandra	Goldwasser	Delta Zeta		f	f	f	{}
mwprd57wt0hjx6b9kw9w	173158013	majaeger	Madeline	Jaeger	Delta Zeta		f	f	f	{}
e508s9iaops52lte79rl	271474699	mialee	Mia	Lee	Delta Zeta		f	f	f	{}
9ebuqv88hk3pa8i5rd6a	675197588	cmcuhel	Cristina	Cuhel	Delta Zeta		f	f	f	{"Educational Speaker"}
kde6x19l6ihsis484vbc	635952349	mrclercx	Maya	Clercx	Delta Zeta		f	f	f	{"Educational Speaker"}
lqharbljyf5sly2hx493	497643174	schoeney	Chase	Schoenfelder	Delta Upsilon		f	f	f	{"Educational Speaker"}
t6avnlqej2ezbes5tdg0	743021311	hjrohe	Hannah	Rohe	Delta Zeta		f	f	f	{}
gxw6eb8t55od216u8nf4	763499765	salaymeh	Dianna	Salaymeh	Delta Zeta		f	f	f	{}
i3q4ko7qfrz5hsnabqkx	805534730	jennyz	Jenny	Zachariason	Delta Zeta		f	f	f	{}
jxhwg041w8fdi8lm3pfn	335541235	jbowdino	Jesse	Bowdino	FarmHouse		f	f	f	{}
tm1rdg8lnfc9ksc2vb2m	116204088	camandt	Christopher	Mandt	FarmHouse	Crew	f	f	f	{}
vsm0egka802bcjm1mppo	371161791	jbergman	Jaren	Bergman	Delta Zeta		f	t	f	{}
f0jzgraj4wgicey6rpvm	341549244	ntopie	Nicholas	Opie	Delta Upsilon		t	f	f	{"Educational Speaker"}
t4k9htl8bezvmr684ovb	229494286	mwolf	Maxwell	Wolf	Delta Tau Delta		f	t	f	{}
eeb8y2znjlsz1iha20hw	164805641	sjpauley	Sierra	Pauley	Delta Zeta		f	t	f	{}
ntx6h8x0hk1c5hvm0vi5	894119226	mitchmcd	Mitchell	McDonough	Delta Upsilon		f	t	f	{Treds}
d69djl33z8190wg1xejq	633362754	kkprien	Keller	Prien	Delta Tau Delta		f	t	f	{Treds}
ivk3raldwyz0wc76cvi5	955857931	awatson1	Alec	Watson	Delta Tau Delta		f	t	f	{}
8tkep8hhjnsbj735bno7	70474435	aablan	Alex-Marie	Ablan	Delta Zeta		f	t	f	{}
8cs4g1wznyfodwcpywjr	7922915	hctim852	James	Peters	Delta Tau Delta		f	t	f	{}
nlhgom478yb4sirev5sh	763682944	sldavies	Shannon	Davies	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
6vd0g3rzkv4hhh0j1ogw	370936566	brummer	Cody	Brummer	FarmHouse		f	t	f	{"Polar Bear Plunge"}
fmjjwvuy35q3arhztspo	11821810	Kahalpin	Kristi	Halpin	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
2rai2bvrx8c5zrp6vc4n	216880664	sgaylord	Samuel	Gaylord	Delta Upsilon		f	t	f	{"Polar Bear Plunge"}
3sgo5e8013rktx1z68se	835730896	emlyon	Emily	Lyon	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
jcexo8tymlsqml0b5sx7	922162241	noahs	Noah	Salmonson	Delta Upsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
vfobhwvz30z3kurd3jlp	795024230	jms2	Jonathan	Schmidt	Delta Upsilon		f	t	f	{"Polar Bear Plunge"}
1p1mwmtia2so3owf7brv	221955759	mcarnel	Madalyn	Carnel	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
dt426kxbmikww39h7ae7	357914584	carlyh	Carly	Hendrickson	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
d4al7cuq89ji0nokrk2c	289093853	taylorj	Taylor	Johnson	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
249m4i9zycjjogvx054l	30496495	bgh	Brianna	Hagar	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
njatvmwcusihi3znxdol	244332112	ajachniw	Angela	Jachniw	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
whct8xabe39axpt59bu5	73111051	geberta3	Grace	Berta	Delta Zeta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
5anmhpuyjeykdy6cvw8r	605141561	ane	Ashley	Edwards	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
hgqavfjjpz9bbmpcbgr0	663935297	gadamo	Gabriella	Adamo	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
s5k702er099xc6tbpa1k	417652235	alblair	Alicia	Blair	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
2jteqnybawone90t0lp8	911618708	kcypser	Kelsi	Cypser	Delta Zeta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
rwxiwy56cas2gjthgfd7	738546809	jamieb	Jamie	Bullington	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
lyuiqmg5arkac9apc2y3	199417218	osmonson	Leah	Osmonson	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
6u0deq2kdf2y7zu1123i	84688632	jsheehy	Jordan	Sheehy	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
x9scd4mq1wvs7bftu7jm	859819961	kjpalmer	Karly	Palmer	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
e0qg7gg0zq66b31uggsd	898863990	samccool	Samantha	McCool	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
04h02h6yduigxs4gu5ss	941902982	ALJensen	Alexa	Jensen	Delta Zeta		f	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
37u0wqk79sghqgwmj6gt	380527147	erikd10	Erik	Dunteman	FarmHouse		f	t	f	{"Polar Bear Plunge"}
e5akj9psgc8kogheowst	871982132	Madisonk	Madison	Koebnick	Delta Zeta		t	t	f	{"Polar Bear Plunge"}
1ki1ln7urc80vo530okm	55473438	gmharman	Grant	Harman	Delta Tau Delta		f	t	f	{"Polar Bear Plunge"}
38t26ibr6vplwjigflck	665597933	smlamers	Steven	Lamers	Delta Tau Delta		f	t	f	{"Educational Speaker",Broomball}
jf04r7gexqo0mkr87jzd	491589126	sdmauk	Spencer	Mauk	Delta Tau Delta		f	t	f	{Broomball}
q122g14e0qp35gsxxd7b	682121467	bbiegger	Bradley	Biegger	FarmHouse	Central	f	t	f	{}
vkhd9z3axlnqb19qggho	37750737	swindell	Anthony	Swindell	Delta Tau Delta		f	t	f	{"Lip Sync"}
nespbwvjtt9b1dq6qnob	749378630	msroth	Michael	Roth	Delta Tau Delta		f	t	f	{}
qifx1ljrvnekla1gvo6j	256634402	abiple	Abigail	Pleima	Delta Zeta		f	f	f	{"Educational Speaker"}
cql5d2aajgpaczl8he2x	617896279	nelsojoh	John	Nelson	FarmHouse		f	f	f	{}
m332vdqw9ua75kf7xwj5	469067599	jsmidt	Jacob	Smidt	FarmHouse		f	f	f	{}
l32elbad5475h38gfqjn	216108925	tdweber	Tyler	Weber	FarmHouse		f	f	f	{}
de9du7tmu7k3deivbkqw	145722577	efbeilke	Emily	Beilke	Gamma Phi Beta		f	f	f	{}
kcr2m8ukb1afqv3oep2t	696312617	hbolen	Hannah	Bolen	Gamma Phi Beta		f	f	f	{}
z1bmoaebncp06fyzmh1p	148686538	zcollins	Zoe	Collins	Gamma Phi Beta		f	f	f	{}
uriu9eqqagij8uwkz1k3	670022381	conwayca	Cassidy	Conway	Gamma Phi Beta		f	f	f	{}
vsxwwpu8osb89swmmuxz	400871503	ncoghlan	Nicole	Coghlan	Gamma Phi Beta		f	t	f	{"Lip Sync"}
zrccblk0jylx0bop25sa	527896393	kvfedyn	Kylie	Fedyn	Delta Zeta		f	t	f	{"Educational Speaker"}
zqkyal7400craf36hpbb	218462244	hannap9	Hanna	Porterfield	Delta Zeta		f	t	f	{}
jpw2lgtocghfkc0n1d73	728109382	emiliam	Emilia	Marinkovic	Delta Zeta		f	t	f	{}
qvnyt42t4vonaf5y5r2q	458641210	meihofer	Megan	Meihofer	Delta Zeta		f	t	f	{}
c74e3eucio8gtba95zxs	849417594	seingham	Savannah	Ingham	Delta Zeta		f	t	f	{}
pxsnn5nmzcyy4utb6n4j	777405629	kticer	Kyle	Ticer	Delta Upsilon		f	t	f	{Treds}
9efk7s21hx0sp4xu322j	842921079	eafritz	Evan	Fritz	FarmHouse		t	t	f	{}
1taw7tbmqbnm2hozrz0c	976679704	nrollins	Nicole	Rollins	Delta Zeta		f	t	f	{}
4xalmtme0nyti8ve7mn5	223872649	kdkapfer	Kalie	Kapfer	Delta Zeta		f	t	f	{}
ji36znwl9ak09ndwzvk0	230130901	tmrymal	Taylor	Rymal	Delta Zeta		f	t	f	{}
ce2bni837vyv0vge5mw9	443754311	rippke94	Mark	Rippke	FarmHouse		f	t	f	{"Polar Bear Plunge"}
c2jg0vrlwkhvvmsoi7cy	992561570	pbelting	Paige	Belting	Gamma Phi Beta		t	t	f	{"Polar Bear Plunge"}
k951gatztiscntkgcqtg	113812699	tylerdix	Tyler	Dix	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
yza94mf9x3vhzsk7b338	525884480	mrc	Mitchell	Carlson	FarmHouse		f	t	f	{"Polar Bear Plunge"}
7wa7zcqxboknboz2s5cd	490107638	cholson	Caleb	Olson	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
cvw81l7jbq5xcjhyxejx	815021224	jdclark1	Jacob	Clark	FarmHouse		f	t	f	{"Polar Bear Plunge"}
qnb2kw4qd5stkshb3ahy	116683567	joshuat1	Joshua	Thompson	FarmHouse		f	t	f	{"Polar Bear Plunge"}
2b6xu0xezc9ogya8lwan	726704979	Hjkonek	Hayley	Konek	Delta Zeta		t	t	f	{"Polar Bear Plunge"}
tctexuzffi7u4ajsy7vn	464637173	allisonw	Allison	Wisnieski	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
m56bo1wkxnogipzq0lbw	609504920	mjensen	Morgan	Jensen	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
sftbbmsfme7tkkauq1pb	880759880	mhauck	Melissa	Hauck	Delta Zeta		t	t	f	{"Lip Sync",Treds,"Polar Bear Plunge"}
vz4iu3wgigedjgp5rv70	332384052	tnjones	Taylor	Jones	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
y7xid0ng6bimdhwk1urd	201150977	lexie	Alexandra	Williams	Delta Zeta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
daokszasi1vut0cr6qqb	47841794	mdnguyen	Mimi	Nguyen	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
5ufugxjqg4a1wp7yu7vc	803056254	jennymj	Jennifer	Johnson	Gamma Phi Beta		f	t	f	{}
c7tu97rpe0unzu5tql79	937588652	atm	Alexandra	McGinness	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
bf0p50gnthc3re12pso6	828231427	ambervv	Amber	Vander Veen	Delta Zeta		t	t	f	{"Polar Bear Plunge"}
zibvmad9q1pi01a3b7un	383539181	aregmi	Aryaa	Regmi	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
ahi54bjeyj0ln0s7x5ge	789432644	kmlorenz	Kiley	Lorenz	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
gi44ikwr4qihnwcpfslj	120950903	nemiller	Nicole	Miller	Delta Zeta		t	t	f	{"Polar Bear Plunge"}
87frx58mta3k18mzyye4	763059389	jmtan97	Jennifer	Tan	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
jwmqamviw41yji61yhfy	333126827	aedoster	Abby	Doster	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
h0wn6jbtwd7n1osm3eao	246453207	mmb17	Meredith	Brown	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
b28xhma9oyeyc0y2qeqx	927416490	megstew	Megan	Steward	Delta Zeta		t	t	f	{"Polar Bear Plunge"}
x9dkle8omcxdvcyux28d	2257271	mkcoy	Mary	Coy	Delta Zeta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
lpf9a0ye31ao5sqpl9r4	73647574	onielsen	Olivia	Nielsen	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
oc36c4r70jxl3s64e4rg	281320063	stroback	Christina	Stroback	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
6ifdg956r83aafje2jg5	594526933	arittman	Alexa	Rittman	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
ivjr71jvgesvjn7chqei	245484263	hannahjc	Hannah	Carlson	Gamma Phi Beta		f	t	f	{"Lip Sync","Polar Bear Plunge"}
7lqqg4jrblkoqa33mc31	802919144	bmhoover	Blake	Hoover	Delta Tau Delta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
rbqe9xfuqmlsx5h1nyy7	920232313	mmc1	Megan	Collins	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
ireua2iwkdg4jj47pnxo	894893027	drbuzard	Dorothy	Buzard	Gamma Phi Beta		t	t	f	{"Polar Bear Plunge"}
1yc6kwoo3ynl2k0ppq7b	746544823	jrthoren	Jacob	Thoren	Delta Upsilon		f	t	f	{"Educational Speaker",Broomball}
98ccd3ntwyqvf7cbjqri	746478733	rwblunk	Ryan	Blunk	Delta Tau Delta		f	t	f	{Broomball}
sp6li0wxmlrqoyub5gzn	182519362	mfbrown	Maria	Brown	Gamma Phi Beta		f	t	f	{}
frwy7ex2567d5uj9ibd9	300027751	ward	Joseph	Ward	Delta Tau Delta		f	t	f	{"Educational Speaker","Lip Sync"}
fyvit4jp0s9zsyom6d02	159423264	jhohlen	Justin	Hohlen	FarmHouse		f	t	f	{"Educational Speaker"}
l8o9e035gvrlaa8uavah	463414984	mscopley	Mackenzie	Copley	Gamma Phi Beta		f	t	f	{"Lip Sync"}
7451i5ucajzjok0jgybe	191777586	adelzell	Amanda	Delzell	Gamma Phi Beta		f	f	f	{}
0kplj1oq9vtm7epky4rm	422589191	jdunker	Jillian	Dunker	Gamma Phi Beta		f	f	f	{}
0r2i95pg3tm8mqr5f2kd	599140542	jce	Jenna	Engebretson	Gamma Phi Beta		f	f	f	{}
zdqia796a8ghycwnz8g7	592696104	clfoster	Colleen	Foster	Gamma Phi Beta		f	f	f	{}
i141ih7ztq5vo8kbvlsr	755302584	emmyg	Emmy	Gregory	Gamma Phi Beta		f	f	f	{}
snmuw81uao9x8df3ozei	169138970	snhansen	Sophie	Hansen	Gamma Phi Beta		f	f	f	{}
cf4pvli3i0ivpp2l6qam	14194180	shanisko	Shannon	Iskowitz	Gamma Phi Beta		f	f	f	{}
lnmivptnqk76vlfvjg1b	939550635	skull	Simone	Kull	Gamma Phi Beta		f	f	f	{}
xjz438hq11ixk95vcsc6	329951634	pleonard	Payton	Leonard	Gamma Phi Beta		f	f	f	{}
cbsbbya418ldpszjxh8a	806062257	lisondra	Joelle	Lisondra	Gamma Phi Beta		f	f	f	{}
d17mtg9aqlepihvxz0be	895168350	lombardi	Maria	Lombardi	Gamma Phi Beta		f	f	f	{}
emby6jgif8bcfyy8r3kh	257122866	jmflesch	Jessica	Flesch	Gamma Phi Beta		f	f	f	{"Educational Speaker"}
4zyioubxfx5byty9a23a	185345181	sarahl1	Sarah	Lindstrom	Gamma Phi Beta		f	f	f	{"Educational Speaker"}
vq1wkj2a7jbzsy52519b	686605972	cflowers	Charlotte	Flowers	Gamma Phi Beta		t	f	f	{"Lip Sync"}
3mrb0elenfn6wv0rk5y4	101429328	jklowe	Jacqueline	Lowe	Gamma Phi Beta		f	f	f	{}
e7lvnjwxd1qt7sd9btsg	139352213	momann12	Morgan	Mann	Gamma Phi Beta		f	f	f	{}
wcpw2unzm2idbsjocnpc	970098129	azweifel	Abigayle	Zweifel	Delta Zeta		f	t	f	{}
2o5hmq4nmd9sym28r5qi	413489101	jglanz	Jessie	Glanz	Gamma Phi Beta		t	f	f	{}
vmwl0exebp6c0bkcriwc	497050579	cbringle	Cassidy	Bringle	Gamma Phi Beta		t	t	f	{Dodgeball}
etsyrudaags0yzjxm8sw	926694799	letzkorn	Lindsey	Etzkorn	Gamma Phi Beta		t	f	f	{}
ug1hldr0upj03i8oolid	928201274	swanson3	Matthew	Swanson	FarmHouse		f	t	f	{}
scu0lcnoxuohi4avj7s2	644042460	briennas	Brienna	Steffens	Delta Zeta		f	t	f	{"Educational Speaker"}
k5hx08zznlz4timyl28s	721560840	willman	Adam	Willman	FarmHouse	Crew	f	t	f	{}
188yrur2fqw4j1w1df23	862231394	mcnoack	Michael	Noack	FarmHouse		f	t	f	{}
5apfxip4odboh4gyy9n2	284331047	nawong	Nicole	Wong	Delta Zeta		f	t	f	{"Educational Speaker"}
jcrtyqijluyz5mhmsa4t	162822660	bpick	Bradley	Pickhinke	FarmHouse	Central	f	t	f	{}
b9sp3boo1f3t4udf3ozr	91354263	toc4isu	Tyler	O'Connell	FarmHouse		f	t	f	{}
7eh73qx364cf051casaw	311740340	stouffer	William	Stouffer	FarmHouse		f	t	f	{}
j9sd7c2y0lnhl4hh0pcu	815961146	hclingan	Hannah	Clingan	Gamma Phi Beta		f	t	f	{}
e2evgc4neu6abh0ew3u2	760689951	kjobrien	Kyle	O'Brien	FarmHouse		f	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
ann2xkmv1hecdlkz5c5e	66876810	nolsen	Nicholas	Olsen	FarmHouse		f	t	f	{"Polar Bear Plunge"}
psas7t9un7b3wnosr0tx	905014110	jsellis	Jonathan	Ellis	FarmHouse		t	t	f	{"Polar Bear Plunge"}
fe92v0z6o7a5f15scoh7	732696965	wenisi	Walker	Nisi	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
5nz2z8mygc8inp15ktgr	366060727	maryhags	Mary	Hagstrom	Gamma Phi Beta		t	t	f	{"Polar Bear Plunge"}
ny5wl0x7u4xecbyem8d9	889317429	ashleyh1	Ashley	Herrington	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
qjihqg37r3neyte312k7	861873012	emileee	Emilee	Earlywine	Gamma Phi Beta		f	t	f	{}
zy7lpfjgxibfq7ieppg6	295872577	ncprater	Natalie	Prater	Delta Zeta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
bzpmzp70l0sgsnexgcvz	302107806	tnjames	Tessa	James	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
flg6acmiro10l9diqert	491066592	sleja	Samantha	Leja	Delta Zeta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
apbdxhd9wpgtwmo6vwjl	373219847	aemonroe	Amy	Monroe	Delta Zeta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
bca4hiwkvxrgf9heei6h	840963156	bsardz	Brittany	Sardzinski	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
m52j4t04ieltaw6m8flt	593102538	mcgrobel	Macy	Grobel	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
3330jepxxnlyx6rstw98	626074449	elysee	Elyse	Ericksen	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
7637g4xa2wh580rpx766	832807016	bslate	Bryannah	Slate	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
p11k4bftped2yz2djc4k	225543346	sbecker	Sierra	Becker	Gamma Phi Beta		f	t	f	{"Lip Sync","Polar Bear Plunge"}
ju0wk0vdkltiqd1scxr6	715345631	jcbuzard	Jacqueline	Buzard	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
oyqjj0al3p1hs1vi6d63	875855003	rilecuth	Riley	Cuthbert	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
y76f5yw8wfta7khnmb2y	456558134	kpjader	Kristina	Jaderborg	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
xqvpjzvk4ociaq12lj47	721725004	kraeling	Claire	Kraeling	Gamma Phi Beta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
jcq2w5qoymxr3u019llx	867880204	sfkeast	Sophia	Keast	Gamma Phi Beta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
kxx94ijujvx338f64rbq	148614490	trog0724	Timothy	Rogers	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
hewkfwiu6xrzbfy3tcc4	866339474	ryan125	Xin	Huang	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
14t0300zminqro53blht	790337571	fleminge	Emily	Fleming	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
dewt7vhkf7jq0p62zyq1	895664770	klehner	Kristin	Lehner	Gamma Phi Beta		f	t	f	{}
3wskfk73eh74c5z4ke85	592435876	eamarrs	Emily	Marrs	Gamma Phi Beta		f	f	f	{}
fmdwtph4m2xmc1i2n7cw	984213230	eameyer1	Emily	Meyer	Gamma Phi Beta		f	f	f	{}
wey6zqd8nohmv4qwf0bz	385394009	ormiller	Olivia	Miller	Gamma Phi Beta		f	f	f	{}
yg9t7vmmeod586zng9ak	422224803	snnorris	Shannon	Norris	Gamma Phi Beta		f	f	f	{}
numn5qvbjdajfbvx51pb	202297095	arossman	Allison	Rossman	Gamma Phi Beta		f	f	f	{}
6383ctmxna83f1kd1ta4	788042255	eschaer	Elizabeth	Schaer	Gamma Phi Beta		f	f	f	{}
dxaqslvfyza2w0l72stt	718968278	audras	Audra	Schminke	Gamma Phi Beta		f	f	f	{}
upl1sjk4bfxuarst0nhd	687317631	selliris	Alexandra	Selliris	Gamma Phi Beta		f	f	f	{}
toysueyqemjx7iblf13z	690328639	hshodeen	Holland	Shodeen	Gamma Phi Beta		f	f	f	{}
cd7pcxojf7r8jfdb6ml5	419060642	rshriver	Rachel	Shriver	Gamma Phi Beta		f	f	f	{}
cpefolf6kfdsj31csbr2	340765453	elstok	Eleanor	Stok	Gamma Phi Beta		f	f	f	{}
8nvsm1ffz3zljrk8chhh	985787803	srtobis	Sydney	Tobis	Gamma Phi Beta		f	f	f	{}
l5hsm0qnhmitcql5zkys	59297262	rtrost	Rebekah	Trost	Gamma Phi Beta		f	f	f	{}
v1pt6xwd3pleu9opbuou	940523607	hworrall	Hannah	Worrall	Gamma Phi Beta		f	f	f	{}
0jhhy1pgfaegg60rj5ft	49792771	kzenk	Katelyn	Zenk	Gamma Phi Beta		f	f	f	{}
okcpdtrji2thut9rahor	959320362	andersal	April	Anderson	Gamma Rho Lambda		f	f	f	{}
93b12jjcah4yndf7wzeq	848498675	cday	Chelsea	Day	Gamma Rho Lambda		f	f	f	{}
hhw8sis1mxi7ucl2kse8	157055899	smfalter	Savanna	Falter	Gamma Rho Lambda		f	f	f	{}
kbwdluktem9n062b9qg9	128062935	gracem	Grace	McLaughlin	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
mdsljvqgxlk4gb02kupz	204747543	jlgookin	Jessica	Gookin	Gamma Rho Lambda		f	f	f	{}
aycyqs5weivvnhglqn6w	69981912	brmc	Brian	McCarthy	Gamma Rho Lambda		f	f	f	{}
0oktdgnj9eldvjt8712v	637107471	hewalker	Hailey	Walker	Gamma Phi Beta		f	f	f	{"Educational Speaker"}
qpqewwj99iovj5k4mf61	631787184	mmnorris	Madeline	Norris	Gamma Phi Beta		f	f	f	{"Educational Speaker"}
elz91ybau5xbabfp267m	917291375	hmoffitt	Hayden	Moffitt	Gamma Rho Lambda		f	f	f	{}
bkpeoyix71i3udem69ga	908005098	Aemoore	Alexandra	Moore	Gamma Rho Lambda		f	f	f	{}
v4ocict65y1b5r6fhvmi	790018256	almoreno	Ana	Moreno	Gamma Rho Lambda		f	f	f	{}
o4p73dfxvdkzc0ngqdqi	594816243	kangliqu	Kangli	Qu	Gamma Rho Lambda		f	f	f	{}
lpvx4yr33wu5myeqij0r	819515697	hreimers	Heather	Reimers	Gamma Rho Lambda		f	f	f	{}
gqwifvv0aqw8s2sqz9ye	875571697	yasminr	Yasmin	Rodriguez	Gamma Rho Lambda		f	f	f	{}
w2reo3eo3l6kmz02t2yi	368739045	mmrosche	Melody	Rosche	Gamma Rho Lambda		f	f	f	{}
axkms2kln94qlger8ja9	76472396	Trt	Taylor	Thomas	Gamma Rho Lambda		f	f	f	{}
kpuup6sezoq7qqpsokmp	864136273	lucy	Lucille	Rosenberg	Gamma Phi Beta		t	f	f	{}
jrcu6i96r315a224zxof	45504459	aejudas	Amanda	Judas	Gamma Phi Beta		t	f	f	{"Lip Sync"}
9a0w7f8gu3u2c4fb4qi5	266840606	jmmart	Jade	Mart	Gamma Phi Beta		t	f	f	{}
71rmwmmm7nt553pihsqr	784231448	micholic	Brooke	Micholic	Gamma Phi Beta		t	f	f	{}
h9x0s7kiaxe6hgl18j8g	657581925	meeklin	Madeline	Eklin	Gamma Phi Beta		t	f	f	{"Lip Sync"}
d57vow5dhrt88em9albm	880984104	cekirk	Claire	Kirk	Gamma Phi Beta		t	f	f	{"Lip Sync"}
bkqxvak9768uvil6ly23	917436520	krkoch	Kelly	Koch	Gamma Phi Beta		t	f	f	{}
m8kcskhof0ld1881cnbj	163482319	credshaw	Carolyn	Redshaw	Gamma Phi Beta		t	f	f	{}
mg37m4dm7uyjlfdf0rvr	243295636	rekinney	Raechel	Kinney	Gamma Phi Beta	Crew	f	t	f	{}
05z6j0yqq5m4a45x263g	631858227	efrazier	Ella	Frazier	Gamma Phi Beta		f	t	f	{}
vp7i508cxdulep10u2bu	416142727	ejgebard	Erika	Gebard	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
5ltlnw1ctm8ib0km97oq	384470086	rdallen	Ryan	Allen	FarmHouse		f	t	f	{"Educational Speaker"}
69bdf2pgbpyb410cnzc2	581563011	mbaudler	Mark	Baudler	FarmHouse		f	t	f	{"Educational Speaker"}
dv6y0qc3h8qvrpni798d	832211380	watubbs	William	Tubbs	FarmHouse		f	t	f	{"Educational Speaker"}
w7rtlqrusy28bgmiu3gr	105822717	rgaffney	Rachael	Gaffney	Gamma Phi Beta		f	t	f	{}
f0hb9bg5hyh0sqlhosxj	311546268	cespeset	Claire	Espeset	Gamma Phi Beta		f	t	f	{}
j2vhtkb89j31ammjx1ub	303758507	kjalore	Kelli	Alore	Gamma Phi Beta		f	t	f	{}
etmjam0mfpr0cjvwby97	58545487	mbabbas	Makayla	Abbas	Gamma Phi Beta		f	t	f	{Volleyball}
7opotam8lkkcff4ckdzr	463168706	mabaker	Madeline	Baker	Kappa Alpha Theta		f	f	f	{}
71xnv3cwn4abk60kxyta	621535935	lkinneer	Logan	Kinneer	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
smtnffcvlxyvi7mdd6wx	248887639	idbrandt	Isiah	Brandt	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
usv0wxdolb5bjtabuk8c	19334315	allirs11	Allison	Schultz	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
uxyypfxst3dpumsxgqb8	458372946	ardragin	Alyssa	Dragin	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
48tat8y752f61gv4o3wm	867794928	mlmatzen	Marisa	Matzen	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
m7hkdwwqmiov5tjnpfmd	417518101	tympestc	Tympest	Crawford	Gamma Phi Beta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
qrvikxs49541i7stjsr6	588887323	agstorm	Autumn	Storm	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
888adfhtszgtohtl0cjn	52303275	jessicao	Jessica	Olson	Gamma Phi Beta		t	t	f	{"Polar Bear Plunge"}
a1xoyjqtgbosmsaafey7	923464574	maggien	Maggie	Naughton	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
t17srrjw5mhl8gr9ojs6	847225379	mabakken	Marit	Bakken	Kappa Alpha Theta		f	t	f	{Broomball}
7s1p9q1avcin6o1059te	958965007	rbrooks	Roxanne	Brooks	Kappa Alpha Theta		f	f	f	{}
o7z0jy2iwx1c2grxm37g	614024411	walvoord	Emily	Walvoord	Gamma Phi Beta		f	t	f	{Basketball}
rtule291ct2kg9ppez5b	789978209	jmbuss	Jessica	Buss	Kappa Alpha Theta		f	f	f	{}
39gl0hhk9wrfnxjddwyb	914723810	byrielk	Kelli	Byriel	Kappa Alpha Theta		f	f	f	{}
50a8v58ur3xbqghqot74	911534624	smege363	Samantha	Ege	Kappa Alpha Theta		f	f	f	{}
8anbxuq87z58tvsv3lcj	854515683	sje	Sydney	Ellis	Kappa Alpha Theta		f	f	f	{}
hym274zqwzoqhuv8rcur	886191306	sellis	Shelby	Ellis	Kappa Alpha Theta		f	f	f	{}
kp15l6fwtumlvn6zwdkj	662191550	meuchner	Megan	Euchner	Kappa Alpha Theta		f	f	f	{}
hgd5wvf5n6wqywq2bemc	71492490	jfusco	Jacqueline	Fusco	Kappa Alpha Theta		f	f	f	{}
0pml1r2ntlu9yog93fxs	631200570	halsted	Anne	Halsted	Kappa Alpha Theta		f	f	f	{}
idofuj3ped4cdaghcsoc	643886267	khanscom	Kimberly	Hanscom	Kappa Alpha Theta		f	f	f	{}
z0bx8qm9jmk08wonwu9l	958272315	rthayes	Riley	Hayes	Kappa Alpha Theta		f	f	f	{}
1mhm0k5e2kg2pbjt59t5	17415495	pchead	Piper	Head	Kappa Alpha Theta		f	f	f	{}
12a1r4pcjvxejqeqiq28	466586160	ajh1	Audrianna	Higginbotham	Kappa Alpha Theta		f	f	f	{}
64m0p7dfh3a4v2kl3cpw	342242921	ahines	Adrianna	Hines	Kappa Alpha Theta		f	f	f	{}
86r73p6pgwz5lc6mmeas	339761447	ahuisman	Ashley	Huisman	Kappa Alpha Theta		f	f	f	{}
akvh0iocfzpy6zarheok	111455384	rubyjan	Ruobing	Jiang	Kappa Alpha Theta		f	f	f	{}
av25y5iy0daz7v0mall3	229126898	jkeats	Jennifer	Keats-Snow	Kappa Alpha Theta		f	f	f	{}
40ccy6x6z8k5nndel3ds	207681474	heathlam	Heather	Lamoureux	Kappa Alpha Theta		f	f	f	{}
titpnpmwv295acfc0kbk	162457580	mleclere	McKenna	LeClere	Kappa Alpha Theta		f	f	f	{}
qqxyszspzlc5v6afafqw	740471732	chanteld	Chantel	Ledbetter	Kappa Alpha Theta		f	f	f	{}
qgnfqjipwwn21cem3ruh	262784522	dlille24	Danielle	Lilleskov	Kappa Alpha Theta		f	f	f	{}
5r0niz225zbegpxsswbn	346789443	ahmeyer	Amanda	Meyer	Kappa Alpha Theta		f	f	f	{}
i8tpyk3es4wae99v2xoc	213788596	affybear	Afton	Miller	Kappa Alpha Theta		f	f	f	{}
h0g6op6kbbnyydj40uwv	597614017	jazzmynn	Jazzmyn	Nielsen	Kappa Alpha Theta		f	f	f	{}
ch6osuyiyuoj5i2p0cxe	923348447	drnolte	Danika	Nolte	Kappa Alpha Theta		f	f	f	{}
gi95w13zy8i74frp1x75	276405129	crpace	Caitlin	Pace	Kappa Alpha Theta		f	f	f	{}
6sroshyfbfu0rpruyb08	979605627	oaramsey	Olivia	Ramsey	Kappa Alpha Theta		f	f	f	{}
x94hkg00440nspvknqly	154783669	ckreth	Courtney	Reth	Kappa Alpha Theta		f	f	f	{}
qjvqny92c6adoo5782cy	106490404	mlmathis	Michelle	Mathis	Gamma Phi Beta		t	f	f	{"Lip Sync"}
vqlvyzwtfvdvh1k8whxw	526739213	mgpalma	Maia	Palma	Gamma Phi Beta		t	f	f	{"Lip Sync"}
i7ylzgjwszyn3urytpd5	949814942	kenni	Kenni	Terrell	Gamma Rho Lambda		t	f	f	{}
b1pugq7vg69eyo31hgy4	119053935	bmw1	Brianna	Williams	Gamma Phi Beta		t	f	f	{}
vuvssvjxcgt7npn384mn	437459022	whitsitt	Bailey	Whitsitt	Gamma Phi Beta		t	f	f	{}
qg3cztleh4ibs27kieq6	859039204	gmrosson	Grace	Rosson	Gamma Phi Beta		t	f	f	{}
5enc8qtq6lpd1iith9j5	800743969	taylors1	Taylor	Shirbroun	Gamma Phi Beta		f	t	f	{}
h9vvsm32trhqu9x2uwiz	765116352	lswirbul	Lindsey	Swirbul	Gamma Phi Beta		f	t	f	{}
we5qqgenyab55czyh8j3	335227893	sjkelly	Sarah	Kelly	Gamma Phi Beta		f	t	f	{"Lip Sync"}
o4713cz2xsszg6zgqaeq	616608012	skshah	Stephanie	Shah	Gamma Phi Beta		f	t	f	{}
rlsf4ciuptw3ka6zkazk	654918264	llaske	Lindsay	Laske	Gamma Phi Beta		f	t	f	{"Karaoke 1st Cuts"}
0eml168qpsew6jij06mc	818436619	scpanko	Sarah	Panko	Gamma Phi Beta		f	t	f	{}
j8zwyw2ozk5cso5883nv	247162943	rhecker	Rachel	Hecker	Gamma Phi Beta		f	t	f	{"Educational Speaker"}
wu9uyqjbmwz6r9bu3f4a	788240477	hmrush	Hannah	Rush	Gamma Phi Beta		f	t	f	{}
rr6g82iukqui4yx686rp	127284181	kdewoody	Kaitlyn	Dewoody	Gamma Phi Beta		f	t	f	{"Educational Speaker","Lip Sync"}
ixigammtmn51lfi43i5i	514237756	mhyndman	Muriel	Hyndman	Gamma Phi Beta		f	t	f	{"Lip Sync"}
63ijgndq8mznnhkaegqo	594375815	anferree	Alexus	Ferree	Gamma Phi Beta		f	t	f	{}
ym8koutp09now3ci712h	639256618	sfest	Sabrina	Fest	Gamma Phi Beta		f	t	f	{}
rn64igpm4iw3iqjo206c	713554842	llarsen1	Lauren	Larsen	Gamma Phi Beta		f	t	f	{}
nur33r2g7ko8g31xjiyj	62638576	jcleaver	Johnna	Cleaver	Kappa Alpha Theta		f	t	f	{}
p8j35wgjldl111bfa6x2	302189888	sroe	Stephanie	Roe	Kappa Alpha Theta		f	f	f	{}
5en7oyalws7139ogukoa	714888174	amyr	Amy	Rogers	Kappa Alpha Theta		f	f	f	{}
hbs370b4o4sdv70jlxc1	918033160	dmruf	Delanie	Ruf	Kappa Alpha Theta		f	f	f	{}
m3yaq38mtspkmsbtnv8i	798235438	jschiele	Joanne	Schiele	Kappa Alpha Theta		f	f	f	{}
ntacg3zz13l655aebzm4	641574951	lope1997	Andres	Lopez	FarmHouse		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
cqjyqih2sk1dqnsvu2la	684980296	mewille	Madeline	Wille	Gamma Phi Beta		f	t	f	{Broomball}
v9ujqjidbl5gn16oud6y	661181729	eforsyth	Emily	Forsyth	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
pkyzl0w40ei30kwlwefz	677239563	tessnd95	Tess	DeBartolo	Kappa Alpha Theta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
vd2b84tpwlayjdc2qxcu	845664820	jcpattee	Jenna	Pattee	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
q6e6nj0gp6s4z09pq20l	785254470	rastohr	Renee	Stohr	Gamma Phi Beta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
oecaejez6fuhizrektcu	849843995	tdklocke	Tate	Klocke	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
kh7s7dqs0egqbfjrjpcj	901154275	susans	Susan	Schwickerath	Kappa Alpha Theta		f	f	f	{}
aef88cxipqiexinp4qrx	266061796	michaela	Michaela	Spaulding	Kappa Alpha Theta		f	f	f	{}
2cuzw320ms5jbrebu9kw	902494617	stalians	Sierra	Stalians	Kappa Alpha Theta	Crew	f	f	f	{}
jnwbusnj6imsw8jdixre	154368239	lilannie	Anne	Steenson	Kappa Alpha Theta		f	f	f	{}
y26fap1nl09s2tiaprle	938057144	srswon	Shannon	Swon	Kappa Alpha Theta		f	f	f	{}
aig09thiucz0typnbr90	837108300	tran	Christy	Tran	Kappa Alpha Theta		f	f	f	{}
8nim1zsexqc1f5k8o7ty	792600833	baupton	Bailey	Upton	Kappa Alpha Theta		f	f	f	{}
r5ln6ero6d96sde9vev8	749927178	melissav	Melissa	Veenstra	Kappa Alpha Theta		f	f	f	{}
5votiyzyz8rly05l2iep	388807451	alw18	Alexandra	Weisshaar	Kappa Alpha Theta		f	f	f	{}
z44ulc64cdi2iw5v2taq	50850840	whitaker	Sarah	Whitaker	Kappa Alpha Theta		f	f	f	{}
nwdw7g6doci0tq6vdgxc	196930758	jzhou	Jenny	Zhou	Kappa Alpha Theta		f	f	f	{}
zw8rvv66fmkt334y9070	719020326	cja	Claire	Anderson	Kappa Delta		f	f	f	{}
zmna6kvfft2nbj9hwop2	38558520	mkmartin	Molly	Martin	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
vgmkqx1t1yy26zwbs7qx	411092706	cayleeb	Caylee	Balcerzak	Kappa Delta		f	f	f	{}
j8mwj589p7ceox486xwe	776901125	bridgesm	Morgan	Bridges	Kappa Delta		f	f	f	{}
29bpktlhpeg4b4wewky5	138997859	callyc	Cally	Caviness	Kappa Delta		f	f	f	{}
h8aqxu9blwnp1zcesw9s	150562424	cnchrist	Casey	Christ	Kappa Delta		f	f	f	{}
5kqqvlubtdnlts6hh834	806304499	ljfisher	Laura	Fisher	Kappa Delta		f	f	f	{}
wah3qwk9idllhpu5s776	987547561	skframe	Sarah	Frame	Kappa Delta		f	f	f	{}
eu6oap43qh8hi56qa5dw	123351228	hgavic	Hanna	Gavic	Kappa Delta		f	f	f	{}
fmylgcymh3tzueokxrzg	583409827	cmg	Caitlin	Gearhart	Kappa Delta		f	f	f	{}
h6xu3j2z394pthx8xcp4	634192559	egoulet	Elizabeth	Goulet	Kappa Delta		f	f	f	{}
473cgwsarlm5fofzhd0n	655413794	eichhorn	Margaret	Eichhorn	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
y68bzokqr55ajs18ep9y	350767448	lbrooke	Leah	Brooke	Kappa Alpha Theta	Crew	f	t	f	{}
ybuhdso4nskohwhjv3y6	311132822	ablum	Audrey	Blum	Kappa Alpha Theta		f	t	f	{}
014xxs536zrn2lohgvns	35263228	browncm	Carissa	Brown	Kappa Alpha Theta		f	t	f	{}
u6w4bo2qrbfcm3jxmgfn	316215900	sydcline	Sydney	Cline	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
ay603nj62kd0p8ac7fru	837005169	cj6687	Courtney	Johnson	Kappa Alpha Theta		t	f	f	{}
0niuvy5zkiw9eqmdber6	610324715	cglattly	Claire	Glattly	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
627b4qgkrztd8cm5c8lh	581269713	shanna1	Sabr	Hanna	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
aaqywtgneott8gk4h6tp	677436792	easesker	Elizabeth	Sesker	Gamma Phi Beta		t	f	f	{"Lip Sync"}
7zv5o0djoq15of1y4lmh	794715922	jcullen	Jenna	Cullen	Kappa Alpha Theta		f	t	f	{}
j2lt3v1dhytel6wgfxhp	249356163	njgraber	Nicole	Graber	Kappa Alpha Theta		f	t	f	{}
4wqo7x0vm2rz4kofpijw	830200371	jennas1	Jenna	Sandquist	Gamma Phi Beta		f	t	f	{"Educational Speaker"}
k6gd8axuwv7wx98zmji4	626455830	cain5410	Jordan-Alexa	Cain	Kappa Alpha Theta		f	t	f	{}
rttc4xh82y68bizzkrk7	172779607	hkmoore	Haley	Moore	Kappa Alpha Theta		f	t	f	{}
pby64dh3xuruha6erpmx	248628380	mkmac	Michaela	McInerney	Kappa Alpha Theta		f	t	f	{}
ykjfu7gjcwrad90y6ovn	418308927	aamhof	Amanda	Amhof	Kappa Alpha Theta		f	t	f	{}
de91ezegzy7ov2nc440t	849544711	jrapp	Jacqueline	Rapp	Gamma Phi Beta		f	t	f	{}
qd0tt3lj07n0wbfjv8kt	220931711	ebern17	Emily	Berntson	Kappa Alpha Theta		t	t	f	{}
ldsjd9g1wa1s0woyo40p	702367694	cerretti	Samantha	Cerretti	Kappa Alpha Theta		f	t	f	{}
5qfpw81w54zqluzkfqmf	933276380	caerwin	Callie	Erwin	Kappa Alpha Theta		f	t	f	{}
fw0rptrzubsam78ti3ez	436420985	egust	Elizabeth	Gust	Kappa Alpha Theta		f	t	f	{}
x1714bsu5f23v28gti4n	437360924	lld	Lauren	Dunteman	Kappa Alpha Theta		t	t	f	{}
p2fdlu2q0240m6k3rxm3	609386778	benefiel	Kayla	Benefiel	Kappa Alpha Theta		f	t	f	{}
qv83sp1c7b4nsrwwxdr3	542684171	klbeeck	Kirsten	Beeck	Kappa Alpha Theta		f	t	f	{}
quvpqu86y0k6ck5j7q0l	6855849	lynche	Elizabeth	Lynch	Kappa Alpha Theta		f	t	f	{}
snktqiwves01asmhmnff	364143886	mgroe	Morgan	Groe	Kappa Alpha Theta		f	t	f	{}
7i6w7sanspuologg9oeh	95077983	smoman	Samantha	Oman	Kappa Alpha Theta		f	t	f	{}
1vbx7b5tkt5sde16awnm	8240232	knh	Kayla	Halvorson	Kappa Alpha Theta		f	t	f	{}
semt5zda0h9fuyrqa87e	460438979	lucyames	Lucina	Ames	Kappa Alpha Theta		f	t	f	{}
8b9san13wr14oxcabt88	809934149	melanys	Melany	Safraniec	Kappa Alpha Theta		f	t	f	{}
bbz6kj0nh8sq0g3sd4mu	815946131	cgulasy	Christine	Gulasy	Kappa Delta		f	f	f	{}
n147kyfhfvhicz7x2upx	237627413	adhunter	Ashlyn	Hunter	Kappa Delta		f	f	f	{}
m1xk1a07v5sf82zrzatu	327689382	ojacobus	Olivia	Jacobus	Kappa Delta		f	f	f	{}
tw519nmke3x60kz0jle4	813864080	aciolino	Andrea	Ciolino	Kappa Delta		f	f	f	{"Educational Speaker"}
4rfsyo21fl7agxjxghlv	167198031	kaday	Katherine	Day	Kappa Delta		f	f	f	{"Educational Speaker"}
l2n0rwvl6p7chm8eerwm	625195571	mboehmer	Mary Jo	Boehmer	Kappa Delta		f	f	f	{"Educational Speaker"}
4atnmhxvpcv2yw8khcuj	905686782	mdurbahn	Meredith	Durbahn	Kappa Alpha Theta		f	t	f	{"Polar Bear Plunge"}
r5p77ls9r64qapxc4vk5	282885635	mwirwahn	Monique	Wirwahn	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
h69isb78ivsrdvccwyx7	222052852	paigeone	Paige	Lee	Kappa Alpha Theta		f	t	f	{"Polar Bear Plunge"}
f9uvy60bnzp86ovvlsdi	664415752	sarahid	Sarah	Dace	Kappa Alpha Theta		f	t	f	{"Polar Bear Plunge"}
cnfrvlg21fnq0bznrbp2	974191246	yoric	Casey	Yori	Kappa Alpha Theta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
ivymr5a2yf3pfxo7k4b4	719422731	heiller	Mary	Heiller	Kappa Delta		f	f	f	{"Educational Speaker"}
pogobwxse1f2uaq9ffo7	164179015	cbarbour	Courtney	Barbour	Kappa Delta		f	f	f	{"Educational Speaker"}
0mohsuq9musvxkolld8k	746138946	cjcoffin	Caeli	Coffin	Kappa Delta		f	f	f	{"Educational Speaker"}
e87kc0lrsibm8niq0f79	384939583	mc23	Madison	Clifford	Kappa Delta		f	f	f	{"Educational Speaker"}
ui037a5gtevv63tven71	650353729	mdgow	Maria	Gow	Kappa Delta		f	f	f	{"Educational Speaker"}
a5gqvmvvtp6rr31hxc45	467481039	vmdeluca	Vanessa	DeLuca	Kappa Delta		f	f	f	{"Educational Speaker"}
5dhw8vses82m1udprxkl	868037205	sabritt	Samantha	Britt	Kappa Delta		f	f	f	{"Educational Speaker"}
3akb83nm81i44mp2imkf	348237911	kamcause	Kamber	Causemaker	Kappa Delta		f	f	f	{"Educational Speaker"}
0kxj58c3hjpyiwzszcjf	882894044	cbarrick	Callan	Barrick	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
dg7zc3n5zj9ppfjyonw3	823928138	rhanlon	Raeann	Hanlon	Kappa Delta		f	f	f	{"Educational Speaker"}
8aro8srsizvg56dq9r5o	749006258	cbalcerz	Caitlin	Balcerzak	Kappa Delta		f	f	f	{"Educational Speaker"}
bk9iwebj9ohrozjrdxkc	742695954	jldavis	Jade	Davis	Kappa Delta		f	f	f	{"Educational Speaker"}
mfu320m39q3e7mnjttsi	681141461	lme695	Lauren	Ernst	Kappa Delta		f	f	f	{"Educational Speaker"}
r94x8qrkhmfnfgrom08e	187818631	nkoberna	Natalie	Koberna	Kappa Delta		f	f	f	{}
hgh98e9vh66j001oofva	941697757	mariko29	Mariko	Lee	Kappa Delta		f	f	f	{}
xajap80yk46kmy72gcwg	788261562	mgm9	Mary	Mathison	Kappa Delta		f	f	f	{}
w60uabazs6jzrw6ovkp0	592031440	jaynam	Jayna	Mickelson	Kappa Delta		f	f	f	{}
z8ms5qok10os697snj2z	749469748	kmiller1	Katherine	Miller	Kappa Delta		f	f	f	{}
hje5cyutsljkv8ozztpb	148156029	crmurphy	Caralyn	Murphy	Kappa Delta		f	f	f	{}
t4lr7cgbjx0l0c52lxu1	311877586	apennock	Amanda	Pennock	Kappa Delta		f	f	f	{}
j5oal9ewwrynvka82yww	904241374	akpepin	Allison	Pepin	Kappa Delta		f	f	f	{}
nuw1e8meu5pcguh7xr7a	447313867	cpfohl	Christina	Pfohl	Kappa Delta		f	f	f	{}
wh6gku2a24j9mn5lerda	658526897	akrz	Alexandra	Ramaeker Zahn	Kappa Delta		f	f	f	{}
2daxmwih3bkzi7zpfvta	770229460	anrooney	Allison	Rooney	Kappa Delta		f	f	f	{}
xc2ubk2lbq8uknmfap0c	816356541	vrs	Valerie	Sanders	Kappa Delta		f	f	f	{}
2w6tp645k54l3kps1qpi	741133393	clare	Clare	Schoonmaker	Kappa Delta		f	f	f	{}
mdkzekl9eudh3ms5lno6	284917660	shermanc	Claire	Sherman	Kappa Delta		f	f	f	{}
94p6a9znbmnxe5fs8wbw	147827724	alpiero	Abigail	Piero	Kappa Alpha Theta		t	f	f	{}
frrfqg3x1xbt4uzt45dl	608540976	richmond	Lindsay	Richmond	Kappa Alpha Theta		f	t	f	{}
vxhznxwwtq6fhw9zah2q	317915598	bherren	Brooke	Herren	Kappa Alpha Theta	Crew	f	t	f	{}
eq4hi891e25z2y39ifr4	198392194	alidgett	Alexandra	Lidgett	Kappa Alpha Theta		f	t	f	{}
v5ecp2773accijlzjfm3	183617503	hijones	Heidi	Jones	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
4wdzpg4gf4robk6q5e5x	661406746	mlreints	Mekayla	Reints	Kappa Alpha Theta		f	t	f	{"Educational Speaker"}
746uii128zu8hrnxaxgr	510153661	audrey95	Audrey	Lash	Kappa Alpha Theta		f	t	f	{}
ev7kfmheic5cku036ar7	928340477	jayemum	Jasmine	Mumford	Kappa Alpha Theta		f	t	f	{}
v2j4j50om7e3aufmqprg	355818463	aljleo	Alexandra	Johnson	Kappa Alpha Theta		f	t	f	{}
r4vcswynv25y72lpkub2	203527324	ahiggins	Abigail	Higgins	Kappa Alpha Theta		f	t	f	{}
cedestuunx99nlm3rc1g	612681069	meodzer	Molly	Odzer	Kappa Alpha Theta		f	t	f	{}
h4svky4pvg9kquoqk1bb	56550494	krudnic	Kelly	Rudnicki	Kappa Alpha Theta		f	t	f	{}
5hwy02p65aqjzgy6sr3i	659739101	jhumke	Jenna	Humke	Kappa Alpha Theta		f	t	f	{"Educational Speaker"}
iwkr0059e05ab2bq2ns9	624528905	slrodeff	Shannon	Rodeffer	Kappa Alpha Theta		f	t	f	{}
cyrl40vtwvclix5vanp6	583642059	remielo2	Elizabeth	McMahon	Kappa Alpha Theta		f	t	f	{}
a2kdht2pqyu7z5ejhaub	156881725	jlynnp09	Jenna	Papenhause	Kappa Alpha Theta		t	t	f	{"Lip Sync"}
c5a42yq36ppoog4d5aiz	328785457	iherna	Isabel	Hernandez	Kappa Alpha Theta		f	t	f	{"Lip Sync"}
m5wybtwrw54cjraz3lnx	138704583	jlmatson	Jenna	Matson	Kappa Alpha Theta		f	t	f	{"Lip Sync"}
dclxac0la6vscm5qek4y	751035522	ediamond	Emma	Diamond	Kappa Alpha Theta		t	t	f	{}
m23q68jhatvchymlsjpk	796617822	rachael	Rachael	Simpson	Kappa Delta		f	f	f	{}
jngyc0d2nz4f3dsmx74k	274829555	sskinner	Sarah	Skinner	Kappa Delta		f	f	f	{}
8c7v2t33mq981nfgycur	261173913	kphil	Katherine	Philbrick	Kappa Delta		f	f	f	{"Educational Speaker"}
n4jjog1nkog8z26z8u1w	187415228	seliams	Selia	Schneider	Kappa Delta		f	f	f	{"Educational Speaker"}
xfnuvh3tyn9vt3d4m4om	416586170	knutson1	Alison	Knutson	Kappa Delta		f	f	f	{"Educational Speaker"}
k0gscyn8c10ulv2flrmh	98262188	lkilburn	Logan	Kilburn	Kappa Delta		f	f	f	{"Educational Speaker"}
jldh5xlh0fk8sru7l90d	452309889	tshaw	Taylor	Shaw	Kappa Delta		f	f	f	{"Educational Speaker"}
w6vrpsbbbhdfa0spla0u	163539376	rahuber	Reagan	Huber	Kappa Kappa Gamma		f	f	f	{}
sheg1nnqtaxirq5hrwuw	700269594	boehmem	Elizabeth	Boehm	Kappa Alpha Theta		f	t	f	{"Lip Sync","Polar Bear Plunge"}
7soz1tdzo0yc9rsf8u1t	878474673	mghemken	Margaret	Hemken	Kappa Alpha Theta		f	t	f	{"Polar Bear Plunge"}
12et1my9w49dk61wrdvf	864111273	kakoren	Kellie	Koren	Kappa Alpha Theta		t	t	f	{"Educational Speaker","Lip Sync",Treds,Broomball}
6motdj00dloifh5pw3dc	39335324	scarroll	Sara	Carroll	Kappa Alpha Theta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
0tdfrmdf2q7s5ca2f42h	671186547	goluszka	Lily	Goluszka	Kappa Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
y6hs6udtmn84g0xms9me	391119729	hannahks	Hannah	Swanson	Kappa Delta		f	f	f	{"Educational Speaker"}
a1lfidw1hnd6vp6uxzer	894307414	hshupick	Heather	Shupick	Kappa Delta		f	f	f	{"Educational Speaker"}
apr6fcw6g4mruwjz1amf	778635858	pnruggle	Paige	Ruggle	Kappa Delta		f	f	f	{"Educational Speaker"}
v9gbyph85q0jeiil3k0a	971592622	mmixdorf	Maggie	Mixdorf	Kappa Delta		f	f	f	{"Educational Speaker"}
vvzbutt4g8tppg0g5ihw	546457912	kpizarro	Kristen	Pizarro	Kappa Delta		f	f	f	{"Educational Speaker"}
fm8e7qshg58lscw8xih0	82538456	lareid	Lauren	Reid	Kappa Delta		f	f	f	{"Educational Speaker"}
1mi7jsxk7eu6hxnr24ah	909531643	abbyr	Abby	Ralston	Kappa Delta		f	f	f	{"Educational Speaker"}
t2588tzx064w0dzh4t52	279135917	amrohm	Ashley	Rohm	Kappa Delta		f	f	f	{"Educational Speaker"}
cpmw8ngj873ul2kwd586	32548540	ialarson	Isabelle	Larson	Kappa Delta		f	f	f	{"Educational Speaker"}
m89t85pph2ngz0gsr43n	951235310	gmoss	Grace	Moss	Kappa Delta		f	f	f	{"Educational Speaker"}
0220f7kn8f9k6os8izf5	168191023	kleidahl	Kathryn	Leidahl	Kappa Delta		f	f	f	{"Educational Speaker"}
bic0zfw526iu4yeh6ui8	783460709	morganp	Morgan	Parsons	Kappa Delta		f	f	f	{"Educational Speaker"}
7vkto3q4gbddnfd1x47q	793069300	rhkrysa	Rachael	Krysa	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
oc8juua1dqaffzbp294l	778203426	lsroubek	Lauren	Sroubek	Kappa Delta		f	f	f	{"Educational Speaker"}
uwvnp3g0edluph0rsj67	811860049	kmk1	Kelsey	Kunkelmann	Kappa Delta		f	f	f	{"Educational Speaker"}
onq9jl9domhi7bn5oibc	4990009	sydneyk1	Sydney	Kelderman	Kappa Delta		f	f	f	{"Educational Speaker"}
d0jepmhe1oybdtgl0dpx	490219293	kkticer	Kaylee	Ticer	Kappa Delta		f	f	f	{}
6yy4s5zlb8d1y0fkjg7k	424583191	walling	Erica	Walling	Kappa Delta		f	f	f	{}
cng762r93ha3c5jayhw1	664576934	zwissler	Zoe	Wissler	Kappa Delta		f	f	f	{}
bhar7zrh4mfwa4cutuwb	980067088	madisona	Madison	Ackerman	Kappa Kappa Gamma		f	f	f	{}
gfegz0hlya0cm8l4c7uu	461945513	agustpm	Paige	Agustsson	Kappa Kappa Gamma		f	f	f	{}
uccuezhtxki0jtlmo356	419651260	berita	Berit	Anderson	Kappa Kappa Gamma		f	f	f	{}
ketnp21drx3yoidcm2zi	398010641	kmartino	Karolyn	Artino	Kappa Kappa Gamma		f	f	f	{}
xwolr3809qw1h9lndsmv	571692149	hbarclay	Hannah	Barclay	Kappa Kappa Gamma		f	f	f	{}
ii4r9mfoe711w8944w1g	678198521	hmbeck	Haley	Beck	Kappa Kappa Gamma		f	f	f	{}
9vicootelrg5jg8yboyo	891237347	kaijab	Kaija	Bergdale	Kappa Kappa Gamma		f	f	f	{}
4ei1nro7lkovrdez4ols	294975701	rachbill	Rachel	Billingsley	Kappa Kappa Gamma	Crew	f	f	f	{}
ekmdwx7b6nw2dnyiq6mn	751928177	rabodeen	Rayne	Bodeen	Kappa Kappa Gamma		f	f	f	{}
e4yqq4y8ejhb7x9kftag	593957404	srdaly	Savannah	Daly	Kappa Kappa Gamma		f	f	f	{}
27y3nssu5lv10som17ga	369855510	tdash	Torie	Dash	Kappa Kappa Gamma		f	f	f	{}
pp7s03uxy2eeiwbka7go	347994647	adouglas	Anna	Douglas	Kappa Kappa Gamma		f	f	f	{}
qw1j28jk8c1g9jo6g8ao	941050110	selson	Sydney	Elson	Kappa Kappa Gamma		f	f	f	{}
dsuw053k2e1fjexlx87b	787465679	mpfinney	Madison	Finney	Kappa Kappa Gamma		f	f	f	{}
9g3hrfsglkbv27p7nv47	309414133	cmolli	Claire	Mollitor	Kappa Alpha Theta		f	t	f	{Volleyball}
zl7l96ou5bwbr2cb5djh	567223657	cehones	Caitlyn	Hones	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
divoiwpyr2rxg54409c8	601115515	hyokiel	Hannah	Yokiel	Kappa Alpha Theta		f	t	f	{}
r38ia3hiiuw0a48xgmhg	391192802	mpcates	Mallory	Cates	Kappa Delta		f	t	f	{"Educational Speaker"}
c93gziyoe61obvw8i94r	885485601	lschmidt	Leah	Schmidt	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
nmqe5g7zm76eoe3suarp	451825374	kdoriott	Kristina	Doriott	Kappa Delta		t	f	f	{"Educational Speaker"}
udykjuojd684adt6hqgt	467708277	mlkim	Madeline	Kim	Kappa Delta		t	f	f	{"Educational Speaker"}
bbp13cpkbo60b7f2v2nq	374059718	bkoza	Brittani	Koza	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
9u6ygnbn0db4omz20rbp	378917539	abuckert	Amy	Buckert	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
pyv7sgu6f87zpykbe2xa	743436694	taylorb	Taylor	Bjornberg	Kappa Delta		f	t	f	{}
3o0ud27miepgo6hudlwr	527086584	severson	Margaret	Severson	Kappa Alpha Theta		f	t	f	{}
owwkc1uk5cx3e02tp98u	172546374	cfhs	Clare	Schubert	Kappa Alpha Theta		f	t	f	{}
6tda4o4sm17olwgcawbz	416313898	cmwelch	Cassidy	Welch	Kappa Alpha Theta		t	t	f	{"Lip Sync"}
r6u9bifrbzd33mv7qt1g	709467938	ispitzer	Ivy	Spitzer	Kappa Alpha Theta		f	t	f	{}
newugxegpxk1stlhyhya	490786313	lkenney	Leslie	Kenney	Kappa Alpha Theta		t	t	f	{"Educational Speaker","Lip Sync"}
fimsjem4zqk5buup2vuv	19142123	marends	Madison	Arends	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
oabk3b5a6xh4y3b10kc6	611437860	mrfoley	Mackenzie	Foley	Kappa Kappa Gamma		f	f	f	{}
mjq1axb9extli3sraaoq	772178407	gimmelau	Lauren	Gimmestad	Kappa Kappa Gamma		f	f	f	{}
oto0lpu9paw5nf30apl0	621341721	hgorgas	Hadie	Gorgas	Kappa Kappa Gamma		f	f	f	{}
1d4efaq0x6sow938jdbm	56487431	agrant	Anderson	Grant	Kappa Kappa Gamma		f	f	f	{}
yyqzoezs26kqgdwoh1h7	120149029	anneg	Anne	Gustafson	Kappa Kappa Gamma		f	f	f	{}
5rm72fuiobsi0xts3ij6	14875861	blhagen	Brooke	Hagen	Kappa Kappa Gamma		f	f	f	{}
ir1van5tv4abh518qtua	914545632	shenbest	Samantha	Henbest	Kappa Kappa Gamma		f	f	f	{}
oh4yl61kg0vp1ckw09l7	353309957	ahoepker	Allison	Hoepker	Kappa Kappa Gamma		f	f	f	{}
r5pzt326tkvdw5r8xnak	795930135	khorbach	Kaitlin	Horbach	Kappa Kappa Gamma		f	f	f	{}
7lzuhl4bv8c3cbxptda6	146006861	houghton	Kelly	Houghton	Kappa Kappa Gamma		f	f	f	{}
ugamcwwtc0gvxde9fvx4	490208747	bcurley	Bonnie	Curley	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
llgdnb519xiewcagid51	780172393	mollyi	Molly	Isebrands	Kappa Kappa Gamma		f	f	f	{}
usx31u3teyk0lwpu3tsc	31915912	abbyj	Abby	Johnson	Kappa Kappa Gamma		f	f	f	{}
mvopnqnap88hpf6828xa	703812109	katkaalb	Kathryn	Kaalberg	Kappa Kappa Gamma		f	f	f	{}
pdhtalwm0zi14nkochk4	770967197	ecvoss	Ella	Voss	Kappa Delta		f	f	f	{"Educational Speaker"}
1c4z4wp84n14a1vahuag	166769675	gmw1	Gretchen	Williams	Kappa Delta		f	f	f	{"Educational Speaker"}
twpxszniyp0ymb6ndm48	449594229	aw1	Allison	Wittrock	Kappa Delta		f	f	f	{"Educational Speaker"}
hhcjtp559klr7vc7nexu	56394338	ryliev	Rylie	Vander Plaats	Kappa Delta		f	f	f	{"Educational Speaker"}
p42sr9gih9igeks9kpw7	61930869	akwallin	Alicia	Wallin	Kappa Delta		f	f	f	{"Educational Speaker"}
z5gtsutumcwmjpdlhnzw	359773414	paulinez	Pauline	Zielinski	Kappa Delta		f	f	f	{"Educational Speaker"}
eaq84c52uj5refpbeloo	575828253	woodvine	Morgan	Woodvine	Kappa Delta		f	f	f	{"Educational Speaker"}
0340fmbinzvmvj9g4a2v	605794189	emwarda	Eden	Warda	Kappa Delta		f	f	f	{"Educational Speaker"}
inqpe8149gaetal56zsh	655519925	pdisch	Paige	Disch	Kappa Kappa Gamma		f	f	f	{"Educational Speaker"}
95t25y50aj97886kjzhs	306783497	jkingm	Jenna	King	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
awy9wgr895up7qeeqzjo	415260871	mkumsher	Madolyn	Kumsher	Kappa Kappa Gamma		f	f	f	{}
a3gsi2qec6rubwg1z8aj	413611198	slawlor	Samantha	Lawlor	Kappa Kappa Gamma		f	f	f	{}
5syev83lh6c5sraked7y	442064623	aleffler	Abbey	Leffler	Kappa Kappa Gamma		f	f	f	{}
bvxa663qpzyua2qmxc71	560205674	pemaass	Paige	Maass	Kappa Kappa Gamma		f	f	f	{}
gj4wqpqfzj03k2fhkni0	12579567	jackiem	Jacquelyn	Mesenbrink	Kappa Kappa Gamma		f	f	f	{}
u21cmlpxq0fupqqmeho1	7498491	kameyer	Kara	Meyer	Kappa Kappa Gamma		f	f	f	{}
nno8muuh0j3h063m4pzh	343121779	kmoors	Katherine	Moors	Kappa Kappa Gamma		f	f	f	{}
vsy77so2fdblraoo0vf1	713959274	mlmoran	Mackenzie	Moran	Kappa Kappa Gamma		f	f	f	{}
2q27hxailxllo2jyogek	316301986	abigailn	Abigail	Nelson	Kappa Kappa Gamma		f	f	f	{}
wyx43boucfmnhggds6mf	717433740	jlnewton	Jessica	Newton	Kappa Kappa Gamma		f	f	f	{}
v77kfl9839d122ltwi2d	100414314	hoglesby	Hayley	Oglesby	Kappa Kappa Gamma		f	f	f	{}
1lry3p97je6j7qkqewx9	654370744	bmpehde	Bailey	Pehde	Kappa Kappa Gamma		f	f	f	{}
rzlad3ppjo3fuxwx067y	868166299	phillips	Paige	Phillips	Kappa Kappa Gamma		f	f	f	{}
9pr7ttsjhpxf0zdm0uzs	782478697	kpinney	Kaitlyn	Pinney	Kappa Kappa Gamma		f	f	f	{}
n2u7kd0b9mb86gbgprlr	373414069	poppinga	Andrea	Poppinga	Kappa Kappa Gamma		f	f	f	{}
521i9ulik2d8y0xotjrx	272765493	emilypop	Emily	Poppinga	Kappa Kappa Gamma		f	f	f	{}
qrtvkte0whygnbzzqlq7	659828230	jrich	Jade	Rich	Kappa Kappa Gamma		f	f	f	{}
0g2mea5fzvnk5di3z2ua	387954567	mrich	Megan	Rich	Kappa Kappa Gamma		f	f	f	{}
pqn2s6qpwlnh0wd7tmwm	698652026	karich	Kaitlin	Rich	Kappa Kappa Gamma		f	f	f	{}
hl0hljwmqwsj4kcfa5gu	297106810	srogers	Sydney	Rogers	Kappa Kappa Gamma		f	f	f	{}
w2o67yosmo3r1nhf0dze	30528526	emmajo	Emma	Rogness	Kappa Kappa Gamma		f	f	f	{}
6tel3rn7niasbt0kswhp	916470583	madisonv	Madison	Vandenberg	Kappa Alpha Theta		f	t	f	{"Lip Sync"}
0sgo0d2tiiomxaxuhsyu	422065644	bpkanne	Bailey	Kanne	Kappa Delta		f	t	f	{}
udhdz9q22h11v6rygow7	306055774	slenz	Samantha	Lenz	Kappa Delta		t	f	f	{"Lip Sync"}
nn8ao3td1vazznwcpoaz	817307515	dajen	Danielle	Jen	Kappa Delta		t	f	f	{"Educational Speaker"}
3o9fwuylk0fkadmq9af2	822700879	aklahsen	Alyssa	Klahsen	Kappa Delta		t	f	f	{}
hijf7i9kxhxp5mcpf01d	600429865	maurer	Kellie	Maurer	Kappa Delta		t	f	f	{}
zdfftnt0wbk3ng04ecb1	261344083	jpassehl	Jayne	Passehl	Kappa Delta		f	t	f	{"Educational Speaker"}
fbac0oipp7psa4bem8t2	413527114	astukel	Alysa	Stukel	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
fr775q7ist9ar03s3lst	792841061	gundlach	Grace	Gundlach	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
9g6epqy6xcn7j11lvbml	427335934	sjneavor	Sara	Neavor	Kappa Delta		f	t	f	{"Educational Speaker"}
7nlmwfbw8nh355alcbcr	774372599	gazdacka	Sara	Gazdacka	Kappa Delta		f	t	f	{}
dobr63jl26h7uslfgb1z	90450396	aromitti	Alexis	Romitti	Kappa Kappa Gamma		f	f	f	{}
katxzmygxkqp75avq42f	785146386	larusso	Laura	Russo	Kappa Kappa Gamma		f	f	f	{}
2vchhv4z3le8ztxsuqhi	866293428	bmsalow	Brianna	Salow	Kappa Kappa Gamma		f	f	f	{}
k0lqyfd07wknvavvtkro	894977083	randas	Randa	Scaglione	Kappa Kappa Gamma		f	f	f	{}
m0hwchubvdx4wh6oeci6	166521412	rswansen	Ryann	Swansen	Kappa Kappa Gamma		f	f	f	{}
g9c3xln6lht28k3ub470	82396341	nlw	Natalie	Whitinger	Kappa Kappa Gamma		f	f	f	{}
9ekvk4pc1il5ng06o5uj	837823987	ashw	Ashley	Woodworth	Kappa Kappa Gamma		f	f	f	{}
mbhydlhyqdkts15lwkj5	610521912	tlanders	Trevor	Andersen	Kappa Sigma		f	f	f	{}
7wzur5f5iungjx837kp5	620626006	mrmiller	Madison	Miller	Kappa Kappa Gamma		f	f	f	{"Educational Speaker"}
dneyn20vlvs1a7xudhi9	743181471	frberg	Forrest	Berg	Kappa Sigma		f	t	f	{"Lip Sync"}
kzcs3mtph00b58g40pmm	510807313	cchigbu	Chinedu	Chigbu	Kappa Sigma		f	f	f	{}
f8d5fgpc1sconm24n2bb	465183719	chimezie	Amarachi	Chimezie	Kappa Sigma		f	f	f	{}
fd1bppwnh288bbriux84	685564924	ahean	Abby	Hean	Kappa Kappa Gamma		f	t	f	{Treds,"Polar Bear Plunge"}
gc65pzls7y6gdj8642gz	307586311	nriordan	Nora	Riordan	Kappa Kappa Gamma		f	t	f	{"Polar Bear Plunge"}
ucz47a80w6pobidkczba	39201162	mehulick	Morgan	Hulick	Kappa Kappa Gamma		f	t	f	{"Polar Bear Plunge"}
d1llfgf1ttstyvtpbl7i	194178985	kwiens	Kelly	Wiens	Kappa Kappa Gamma		f	t	f	{"Polar Bear Plunge"}
qmf2lqphls0ibtcdesr0	767446708	noahfox	Noah	Fox	Kappa Sigma		f	f	f	{}
du3ri5hpwcg2qdili885	281528247	iaharris	Ian	Harris	Kappa Sigma		f	f	f	{}
9a197bydko50rurx75zf	617349761	bjhayek	Brandon	Hayek	Kappa Sigma		f	f	f	{}
5p9a0qkkvlpqbpzevvhe	490434958	arh1	Austin	Henderson	Kappa Sigma		f	f	f	{}
9rzo3oppi4szbpjtd72d	228752524	rutledge	Jessie	Rutledge	Kappa Sigma		f	f	f	{}
f6xkajmiiigikbksxss6	865255411	tbstone	Thomas	Stone	Kappa Sigma		f	f	f	{}
jfw4l7mqj424n013anj7	178718575	venhorst	Alex	Venhorst	Kappa Sigma		f	f	f	{}
t5mr75xtsdpvts1g6j80	368079712	kcwatson	Kurry	Watson	Kappa Sigma		f	f	f	{}
7uytbcd5r23j4tolcmfx	451239789	jjwebb	Julian	Webb	Kappa Sigma		f	f	f	{}
zrjgkpuk8xl5kc19gwv2	790096380	rodolfoe	Rodolfo	Escamilla	Lambda Chi Alpha		f	f	f	{}
dscvxo1mbfzmf9c20jwz	890547689	gbp	George	Peterson	Kappa Sigma		t	f	f	{"Lip Sync"}
4ki7rs1sx0wcp8h1dem0	588060473	blewis1	Brandon	Lewis	Lambda Chi Alpha		f	f	f	{}
twxe5zc7vryxulzf7bsn	79421342	amm	Andrew	McKeighan	Lambda Chi Alpha		f	f	f	{}
nbixw6qr1a4qrtgzflpe	732437706	woverman	Wesley	Overman	Lambda Chi Alpha		f	f	f	{}
w6ouhx2ej9qyp6hd856n	762711950	rileyp	Riley	Partridge	Lambda Chi Alpha		f	f	f	{}
ushp8vcu4b51ydnh1ajc	927503577	eastuart	Eric	Stuart	Lambda Chi Alpha		f	f	f	{}
nw8474xmy7c0c044hkiw	132372240	nicks1	Nick	Schneider	Kappa Sigma		f	f	f	{"Educational Speaker"}
0p2lb77bvg5z84rraax9	442472062	djlock	Derrick	Lockwood	Kappa Sigma		f	f	f	{"Educational Speaker"}
poi8r353gu6t8oarhjj1	69133088	mrkelley	Monica	Kelley	Kappa Kappa Gamma		t	f	f	{}
4fh0uhb81b4ax4ffgly2	341666325	anna1	Anna	Johnson	Kappa Kappa Gamma		t	f	f	{}
v48kpcaz1cr7uehcw49b	667201568	jaileys	Jailey	Simpson	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
po1c3d8h7aipn7l0mpj2	56291250	kmc1	Katelyn	Chambers	Kappa Kappa Gamma		t	t	f	{"Lip Sync"}
rw7uvpa5nbndzr9xbcj6	97376279	slreeves	Sydney	Reeves	Kappa Delta		f	t	f	{Basketball}
v3yathhrl26gt3rs2wbp	407055649	jlself	Jessica	Self	Kappa Delta		t	f	f	{"Lip Sync"}
dzd4rbjdi16bsg2qz5fy	817694878	tayloru	Taylor	Urbanski	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
jcdi5cmtsjspehs1xnis	141273132	tory4910	Tory	Pfannkuch	Kappa Delta		t	f	f	{"Lip Sync"}
o0hbld9g2qak5b68elon	66148114	cmward	Connor	Ward	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
fs8n0f8ghpnv0ccmj7oc	711889178	laurenaw	Lauren	Wedemeyer	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
hybaoxjljrh5v22g90de	287561274	khennick	Kayla	Hennick	Kappa Delta		f	t	f	{"Educational Speaker",Treds}
d5dg3idftkapgz746vaq	896195330	sdumont	Shelby	Dumont	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
abvkopzzx3qhbu91hvqv	652591969	kahays	Kendall	Hays	Kappa Kappa Gamma		t	f	f	{}
r44w4hl2n8tp3dtal0sd	380744388	cbrannon	Conall	Brannon	Phi Delta Theta		t	f	f	{}
ib19js08xs4t0ge1g7z3	936429521	efgray	Elizabeth	Gray	Kappa Kappa Gamma		t	f	f	{}
24dtxxmanperpqhtxw5r	186693534	cjhagen	Calley	Hagen	Kappa Kappa Gamma		t	f	f	{}
unw7f5fldvxg5wpnk4kg	801826625	pmiedema	Peyton	Miedema	Kappa Kappa Gamma		t	f	f	{}
lldirpucssyks1be3q15	229050863	mgill	McClane	Gill	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
6advthuam7hf9j1k40ax	173104932	cdcooper	Chelsea	Cooper	Kappa Kappa Gamma		f	t	f	{"Educational Speaker"}
rfhcuhv73jmggf9n82p5	24030034	tiwilcox	Tamunodienye	Wilcox	Kappa Sigma		f	f	f	{"Educational Speaker"}
t8b8zimv2hzucc4syqtc	760990241	azimm	Alexander	Zimmerman	Lambda Chi Alpha		f	f	f	{}
qbdqq5rrbx4epo0xnsf5	202767565	bcg29	Brittany	Grosskopf	Phi Beta Chi		f	f	f	{}
1n4d8izj4acojhfwtczz	133023891	shoepp	Shannon	Hoeppner	Phi Beta Chi		f	f	f	{}
lxi1ma6tfgz6l1hxlaya	11761750	tjiracek	Timothy	Jiracek	Phi Delta Theta		f	f	f	{}
6yagoa43li4ju6rirmg6	91751660	southorn	Sarah	Southorn	Phi Beta Chi		f	f	f	{}
yevxuv1fs376yuo2m2n7	403861458	jmaceto	John	Aceto	Phi Delta Theta		f	f	f	{}
7fdrqe18ks7502rfwcre	705946241	gwbauer	Grant	Bauermeister	Phi Delta Theta		f	f	f	{}
g0szf5oj7de0h41bdx5q	840957117	brbjoin	Brandon	Bjoin	Phi Delta Theta		f	f	f	{}
4y7pl6n32f2vxhhui48q	650314665	jbrolley	John	Brolley	Phi Delta Theta		f	f	f	{}
p63opnal0yazlgkizq4j	795633866	michaelc	Michael	Carlson	Phi Delta Theta		f	f	f	{}
w0o94pgsztfrxcmeujtv	139322183	bkclaeys	Benjamin	Claeys	Phi Delta Theta		f	f	f	{}
nx0r4ctyi16mmtoq1gkt	304538234	asdean	Alex	Dean	Phi Delta Theta		f	f	f	{}
ke5phlq1een4vs1r7y06	526470977	adote22	Anthony	Dote	Phi Delta Theta		f	f	f	{}
c098xrvb70sqwal1see7	840093254	nasell	Natalie	Sell	Kappa Alpha Theta		t	t	f	{"Show Me The Greeks","Lip Sync","Polar Bear Plunge"}
zyx6wfmzzpjot1pf1zrj	302008707	abday24	Alexander	Day	Kappa Sigma		f	t	f	{"Polar Bear Plunge"}
39d8b5bk842i2ssm9bnr	83785723	zjmuno	Zachary	Muno	Kappa Sigma		f	t	f	{"Polar Bear Plunge"}
ogypilhkdcn5irw49brx	215558343	ldohse	Lauren	Dohse	Pi Beta Phi		t	f	f	{}
e5ultg41q5u20pi11t16	678591914	bjoung	Bawoo	Joung	Kappa Sigma		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
4023o9bgwnjzsxr1kral	340036726	njwalter	Nicholas	Walter	Kappa Sigma		f	t	f	{"Polar Bear Plunge"}
w8k0xgfc0od32rsru1ap	718426709	fhdegner	Frank	Degner	Kappa Sigma		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
3p6doc3yhfv5fcfa6k5j	55476449	cehill	Chase	Hill	Kappa Sigma		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
uoampt8jzkadjt11xpox	834057281	jdjaton	Jared	Jaton	Kappa Sigma		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
uzqlhzhwn8rma2mtili6	645450834	kroth	Kellie	Roth	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
xi6ks8oqihul82sqmw0p	231156991	floersch	Louis	Floersch	Phi Delta Theta		f	f	f	{}
7m685x422mdaio0irocj	293419154	samg	Samuel	George	Phi Delta Theta		f	f	f	{}
dabwzrk17zf0t5n92ggy	588200613	nhinkle	Nicholas	Hinkle	Phi Delta Theta		f	f	f	{}
qludg5yy6tfun49bogrs	734815109	phinkle	Parker	Hinkle	Phi Delta Theta		f	f	f	{}
afzdqimrv87zp2nbln6t	131974843	shillg	Sam	Illg	Phi Delta Theta		f	f	f	{}
uefyrxfv556uz1smuly6	958844911	boeck	Kevin	Boeckholt	Phi Delta Theta		f	f	f	{"Educational Speaker"}
ez1cs1zh8zgl77rono6b	45413368	joehines	Joseph	Hines	Phi Delta Theta		f	f	f	{"Educational Speaker"}
yvfmfazdrmkh1xgrjs2t	818320503	mes1	Morgan	Schilling	Phi Beta Chi		f	f	f	{"Educational Speaker"}
953e0aqhnc8xqcy1wpur	464266803	alexwark	Alex	Warkenthien	Lambda Chi Alpha		f	f	f	{"Educational Speaker"}
zfrj0uqxalmf42i13ye5	86191569	collinw	Collin	Woodvine	Phi Gamma Delta		f	f	f	{}
yrohvt6ylznpvllibded	799290589	bmmyers	Bryn	Myers	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
2ycxjtxu9s9co4lqcg41	393225833	aquintal	Alaina	Quintal	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
bvfnfwhdtshromr4u8cy	676260625	rachele	Rachel	Ericksen	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
in1qckjjuczbxfmyey2y	614915301	jnp	Jordan	Peterson	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
uuofdoylkgr0y04x61vg	752105354	lauras	Laura	Schwartz	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
p2bbwumeglk3b5xagkf5	438869455	lucibess	Luci	Bessinger	Kappa Kappa Gamma		t	f	f	{"Educational Speaker","Lip Sync"}
gdw571mq3fzuo2ntkx3x	353158806	ahongslo	Anne	Hongslo	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
k7qzmgy7g0le4ls0p5qf	111788701	hlutz	Hannah	Lutz	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
3ep2vx47qbz1wfhl3ipc	806489708	kevson97	Kevin	Johnson	Lambda Chi Alpha		t	f	f	{"Lip Sync","Educational Speaker"}
l0h1f7p127kyinqgljci	600683083	mshefti	Matthew	Hefti	Lambda Chi Alpha		t	f	f	{}
7tsx8z986ifmx8pzb5gz	119685566	sjgerkin	Steffanie	Gerkin	Kappa Kappa Gamma		f	t	f	{}
zio80vnnm7ych9c15mf1	701871210	rdtenuta	Ralph	Tenuta	Lambda Chi Alpha		t	f	f	{"Educational Speaker"}
a9ifdn9y03ibid9etmh6	518762268	vebrown	Victoria	Brown	Kappa Kappa Gamma		t	f	f	{}
jbfv1wgiazea0htpbj44	994154185	cstranik	Camille	Stranik	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
8t13qob1ew31q7vrsd18	370613271	kristenf	Kristen	Flanagan	Kappa Kappa Gamma		t	f	f	{}
ts9sybzrri26hxxw1u3i	467670203	adprice	Anna	Price	Kappa Kappa Gamma		f	t	f	{}
pgp1fpkd6i8k2tku64tq	556610462	ecgaer	Emma	Gaer	Kappa Kappa Gamma		f	t	f	{"Educational Speaker"}
ix3iv34a6cnqnc9pmf98	647052406	powersle	Leigha	Powers	Kappa Kappa Gamma		f	t	f	{}
o4zimgni13sv75lrxyck	110196111	sgarland	Sydney	Garland	Kappa Kappa Gamma		t	t	f	{}
3dnc67ykf2y9uoi419fd	256144889	mlberg	Michaela	Berg	Kappa Kappa Gamma		f	t	f	{"Lip Sync"}
4ju1ahd3vc9sncaqmc7h	712273562	kmkassel	Katie	Kassel	Pi Beta Phi	Central	f	t	f	{}
icdzv9u3bxj9mah0xzgt	838835998	bbreit	Benjamin	Breitbach	Kappa Sigma		f	t	f	{"Educational Speaker"}
r20uar0vyieuqklylkh9	204575371	jjiracek	James	Jiracek	Phi Delta Theta		f	f	f	{}
wcbrmrfcaq6yfhinw094	311669385	djohns18	Daniel	Johnson	Phi Delta Theta		f	f	f	{}
mrmk9q6wrpchdk8n6p3l	886804919	nmlenz	Nathan	Lenz	Phi Delta Theta		f	f	f	{}
kit4bqb9ig4as4rcwqry	38432394	stevenmc	Steven	McCarville	Phi Delta Theta		f	f	f	{}
vh98lgy4ns1pkzjecper	761071527	mckernan	Andrew	McKernan	Phi Delta Theta		f	f	f	{}
jqe4p3qzaufynuadlb7e	444554110	moresj	Jackson	Mores	Phi Delta Theta		f	f	f	{}
kic5l7omvqkz1du4yyz1	186663477	jnewt	Jacob	Newton	Phi Delta Theta		f	f	f	{}
x2ej7097ga36x0wmjthe	612530919	kpadgett	Keith	Padgett	Phi Delta Theta		f	f	f	{}
tsc4kr0idmo4h9rrw0ae	901837937	jvpark	James	Park	Phi Delta Theta		f	f	f	{}
zmadqmgrz8bpvgu84qzw	458034577	dpaup	Dylan	Paup	Phi Delta Theta		f	f	f	{}
35zr2e3n11sflhblie6n	71645602	spickett	Samuel	Pickett	Phi Delta Theta		f	f	f	{}
zdn9w9zih5qr51625oar	560519985	drod	David	Rodriguez	Phi Delta Theta		f	f	f	{}
l514b92e9mwy04aoam54	638742124	schlegel	Wesley	Schlegel	Phi Delta Theta		f	f	f	{}
9a3pn8ok35dik0syqo20	967947000	ksickles	Kyle	Sickles	Phi Delta Theta		f	f	f	{}
f9iuvajmo3cz9fxs958s	386664278	hnstone	Hunter	Stone	Phi Delta Theta		f	f	f	{}
m4sab8uc4lbijx6ui2cg	245587342	njtaylor	Nicholas	Taylor	Phi Delta Theta		f	f	f	{}
bboiiwdzs0isl15fiese	898396499	ryanw1	Ryan	Williams	Phi Delta Theta		f	f	f	{}
379pdv677x9uj4m3ydc5	967831865	azupec	Austin	Zupec	Phi Delta Theta		f	f	f	{}
h172a9e0yxou8jymuex3	73631589	mcclurg1	Michael	McClurg	Phi Delta Theta		f	f	f	{"Educational Speaker"}
bgd2qsy600cb4q6mr7cn	201070870	khulick	Kailey	Hulick	Kappa Kappa Gamma		f	t	f	{"Polar Bear Plunge"}
wm4hdxevkek3ocxknww6	101937908	timsch	Timothy	Schweiger	Kappa Sigma		f	t	f	{"Polar Bear Plunge"}
d2dl6i1op2x0w5ulmg4h	490022764	vmpalm	Victoria	Palm	Kappa Kappa Gamma		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
j1bvi7vrazf40hkd7hqy	449025604	kbrendes	Kyle	Brendes	Kappa Sigma		t	t	f	{"Polar Bear Plunge"}
nuc2g44ptvwcm7clnkrk	606671089	vlbarker	Vincent	Barker	Kappa Sigma		t	t	f	{"Polar Bear Plunge"}
6216m90n8bcoibs0dudt	620583984	jnachman	Jacob	Nachman	Kappa Sigma		t	t	f	{"Polar Bear Plunge"}
ypeu494afob2ad9zs03w	369813444	acmajor	Alexa	Major	Kappa Kappa Gamma		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
i47ccbacqhyj2t8gp062	118404313	atlarson	Abby	Larson	Kappa Kappa Gamma		t	t	f	{"Lip Sync",Broomball}
6atjtnu4k0ons18dbrc0	361221861	jordahl	Tyler	Jordahl	Phi Delta Theta		f	f	f	{"Educational Speaker"}
pb7yfad4e3pgszzjzxz1	490443974	rypat	Ryan	McCarthy	Phi Delta Theta		f	f	f	{"Educational Speaker"}
8j7xs3jdcu324x61d4a0	370529796	jyblade	Jack	Youngblade	Phi Delta Theta		f	f	f	{"Educational Speaker"}
nzk3h5u5y1w2jnwh9kxk	642566949	cbjoy	Colin	Joy	Phi Delta Theta		f	f	f	{"Educational Speaker"}
bkvp585hkv65xjyrbu4i	726420720	jjsurdam	Jonathan	Surdam	Phi Delta Theta		f	f	f	{"Educational Speaker"}
c9xw0mvp41v5dtn4rnqg	227558358	jpaone	Jordan	Paone	Phi Delta Theta		f	f	f	{"Educational Speaker"}
rtc8yuu0cok2imzueauv	939720794	trevorj1	Trevor	Johnson	Phi Delta Theta		f	f	f	{"Educational Speaker"}
tq77cd1oo3cairq56s20	598381809	srandall	Sydnee	Randall	Phi Beta Chi		f	t	f	{}
xhgoiqrcng1lina7s24p	284270987	miller12	Jacob	Miller	Kappa Sigma		t	f	f	{"Lip Sync"}
1ye7o8glscipucrkxwmk	336022716	yuguangz	Yuguang	Zhang	Lambda Chi Alpha		t	f	f	{}
twe67i94lv0z964u5dsl	151594443	ksim	Katelyn	Sim	Kappa Kappa Gamma		f	t	f	{"Show Me The Greeks"}
9l5q0vuh7f758h2aawug	190192015	meaust	Melanie	Aust	Gamma Phi Beta		f	t	f	{}
395xdb4l58sdxvp3o7c5	943207333	dawargo	Devin	Wargo	Lambda Chi Alpha		f	t	f	{"Educational Speaker"}
iqqjziw0lw3md57tt34y	586352767	mdharm	Matthew	Harm	Phi Delta Theta	Central	t	f	f	{}
vmxopsvg4id5fnyezh9u	681226546	mewalsh	Megan	Walsh	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
oppbll35so047iriyqg2	701859197	tinajero	Joel	Tinajero	Phi Delta Theta		t	f	f	{}
65sstga9b8uh25frjhf2	824892068	xgaumer	Xavier	Gaumer	Lambda Chi Alpha		t	f	f	{}
tcvcn8lxk71rlz9875d7	618552935	nac27	Nicholas	Christensen	Lambda Chi Alpha		t	f	f	{}
w1u5stx833xjd9godapp	375557182	tayoung	Taylor	Young	Kappa Kappa Gamma		f	t	f	{}
hehc4al7eah5h0lu8vuh	217377160	bmh32	Brittany	Hovendick	Phi Beta Chi		t	t	f	{"Lip Sync"}
kak6f3e5vmgvv5nn2uua	718046365	ryanluck	Ryan	Luckinbill	Lambda Chi Alpha		t	t	f	{Volleyball}
ef1vvqs6c785l7q9l7ve	109115026	jbruno	Jonathan	Bruno	Lambda Chi Alpha		f	t	f	{}
l3vxigqoptsldt1m3eth	360512189	shankm	Shannon	Middleswart	Kappa Delta		f	t	f	{}
quajl9jqoehhj7kprnge	167872705	ms3463	Michael	Stevens	Kappa Sigma		f	t	f	{}
zdnvwa35vzv1o6u1h7zg	732971239	joeyp	Joseph	Podgorski	Kappa Sigma		f	t	f	{}
pm9la9ysim0pxdkilang	784016262	afeworki	Zenobia	Afeworki	Phi Beta Chi		f	t	f	{"Educational Speaker"}
dzqx6jjo1ca1hgtrgdfy	10666684	adrianef	Adriane	Frauenholtz	Phi Beta Chi		f	t	f	{}
tl92s3pqe55eqfln3qr4	312982670	kurtb16	Kurtis	Benjamin	Kappa Sigma		f	t	f	{"Educational Speaker"}
mcwj8mzweyzltrcqchb0	490072623	adballer	Alex	Baller	Kappa Sigma		f	t	f	{"Educational Speaker"}
bfdfktxcvxgmzgrzs91a	70011942	mkginty	Michael	Ginty	Lambda Chi Alpha		t	t	f	{}
xssl4mh27c9fylmbcoj9	626049424	jaltwegg	James	Altwegg	Phi Gamma Delta		f	f	f	{}
sd7fx27cks974y556ysp	309383074	pbatdorf	Peter	Batdorf	Phi Gamma Delta		f	f	f	{}
fjh8jy3q237fdtin7nyn	830873043	bbivens	Brandon	Bivens	Phi Gamma Delta		f	f	f	{}
v9905wngx4kbu1pyzlik	745958213	bonderer	Caleb	Bonderer	Phi Gamma Delta		f	f	f	{}
br2yl7nbwa9vqcz5nev7	404779375	tsbrick	Tyler	Brick	Phi Gamma Delta		f	f	f	{}
02ivmaggyfse8n0qduu9	616544929	scottc13	Scott	Cicciarelli	Phi Gamma Delta		f	f	f	{}
gu8g476lzoovzpnjk0tx	351479153	dmfrick	Dalton	Frick	Phi Gamma Delta		f	f	f	{}
mby31ez88rijj7tl18b9	152014887	mwhanson	Murphy	Hanson	Phi Gamma Delta		f	f	f	{}
qjhxe65bzxz2ej5g8a38	723405707	willieh	William	Holzkopf	Phi Gamma Delta		f	f	f	{}
jtpa08e68gfv69hfoing	748510763	bbpeters	Ben	Peters	Phi Gamma Delta		f	f	f	{}
y3b90u7ga5pdgr3k91z2	878186309	ajphaff	Andrew	Phaff	Phi Gamma Delta		f	f	f	{}
l8vvfnhh2vl3jgo5o96i	874547674	austinp1	Austin	Prestidge	Phi Gamma Delta		f	f	f	{}
okynnu6yi7m1jqxz2ylr	225581356	tpurdy	Trenton	Purdy	Phi Gamma Delta		f	f	f	{}
8bf2f7nvndpoqfzr6mtx	752185434	gridgely	Garryson	Ridgely	Phi Gamma Delta		f	f	f	{}
nht8j7v0xjnhndae9c2d	273147912	ntc	Nolan	Christensen	Phi Gamma Delta		f	t	f	{Basketball}
52uduh5npjf5qg9wh8ee	648552929	shenry	Shane	Henry	Phi Gamma Delta		f	f	f	{"Educational Speaker"}
6h8gs54ds1sw2leijmbp	268506266	mjmurphy	Maxwell	Murphy	Kappa Sigma		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
4mm4lv6h9pt0cpvnveah	531167661	koehler	Evan	Koehler	Kappa Sigma		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
53kfmztml02p6z9uk45c	894598705	jgyaase	Jeffrey	Gyaase	Lambda Chi Alpha		t	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
cggn5lrd9d6pqnn1d8tc	714063374	Iankron	Ian	Kron	Lambda Chi Alpha		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
73ufhdunbww46isoaczk	982160179	meaton	Matthew	Eaton	Lambda Chi Alpha		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
hyivao1k4k642dpxzv73	731748017	nicknac	Nicholas	Castellanos	Lambda Chi Alpha		t	t	f	{"Lip Sync","Polar Bear Plunge",Broomball}
ci4g2i6fxkjkm6c86fa7	982702742	ajensen1	Adam	Jensen	Lambda Chi Alpha		t	t	f	{"Polar Bear Plunge"}
5hq0se7j4xwjk94lhsns	544376833	mjpanek	Michael	Panek	Phi Gamma Delta		f	t	f	{"Polar Bear Plunge"}
pxp3x4q2mnlo5uwtxtau	5169195	delanoit	Matthew	DeLanoit	Phi Gamma Delta		f	t	f	{"Polar Bear Plunge"}
magvxb8wbh5gnguqncx3	921619699	jabodin	Jeffrey	Bodin	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
4o4x9hysdqwabq0qlzu2	192091924	thbusyn	Thomas	Busyn	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
ui04bhcz6isgy86vc9jl	425930505	elijahm	Elijah	McKeever	Phi Gamma Delta		f	f	f	{"Educational Speaker"}
8al88z5jvs56mwjge3ke	974348399	mmknouse	Marcus	Knouse	Phi Gamma Delta		f	f	f	{"Educational Speaker"}
0253131596td8yi6a4sy	327000674	wdherzog	William	Herzog	Phi Gamma Delta		f	f	f	{"Educational Speaker"}
jbu56nxvhcur1k5es4j0	811792982	wburns	Wyatt	Burns	Phi Gamma Delta		f	f	f	{"Educational Speaker"}
tves0gqzlpg59cn7yptj	128004901	tjpatton	Thomas	Patton	Phi Gamma Delta		f	f	f	{"Educational Speaker"}
b2uhb1v3481hf7jkv571	773811038	dunteman	Robert	Dunteman	Phi Gamma Delta		f	f	f	{"Educational Speaker"}
4625waf59mchvkwr5d6d	636810174	mbush	Max	Bush	Phi Gamma Delta		f	f	f	{"Educational Speaker"}
2a2ouzga56u6z5p9npb1	165319154	lsbrandt	Lucas	Brandt	Phi Gamma Delta		f	f	f	{"Educational Speaker"}
vcqeg4fvlwa4g2rhebni	121103983	mbrupert	Michael	Rupert	Phi Gamma Delta		f	f	f	{}
87py2c2v4dprkkwb33hs	986828843	aschroer	Andrew	Schroer	Phi Gamma Delta		f	f	f	{}
65syi9oih5wjgygmbbq3	951351401	stahulak	Grant	Stahulak	Phi Gamma Delta		f	f	f	{}
xjyuw3m51rsxedn2b20v	137703598	Venegoni	Bryan	Venegoni	Phi Gamma Delta		f	f	f	{}
9wkbiy14om0k9qu7hk03	886581696	sjhummel	Scott	Hummel	Alpha Gamma Rho		f	t	f	{}
0n8xjwr6n6edaknza0hy	866573736	mpgiunta	Michael	Giunta	Phi Delta Theta		t	f	f	{"Educational Speaker"}
om2zdibtyew9tredlhpk	372943592	kstewart	Katherine	Stewart	Kappa Delta		f	t	f	{}
qbwn8mfaeaijb12h3hye	203620417	lklemme	Elizabeth	Klemme	Alpha Chi Omega		f	t	f	{Volleyball}
tca2me0h4so3x4zardd4	741912171	kcuddy33	Kevin	Cuddy	Phi Delta Theta		f	t	f	{}
ejhgoe362z4lr5fwx6xt	18498508	hjcarter	Hannah	Carter	Phi Beta Chi		f	t	f	{}
bp80xdeuxvwxwfp64m8c	372007660	crdevaux	Cameron	DeVaux	Kappa Sigma		f	t	f	{"Educational Speaker"}
tmrno144p2hdwfl0e8fx	326728402	richiek	Richard	Korneisel	ACACIA		t	t	f	{"Lip Sync"}
ciji5gy1p6xn12ewdc5t	287851564	treinert	Theodore	Reinert	Lambda Chi Alpha		f	t	f	{}
hxvv073d1k3lffcw25gt	124220096	aamarek	Alexandra	Marek	Alpha Gamma Delta		f	t	f	{}
ouzx6cjjzo13rto6ae91	946561616	erik88	Erik	Van Treeck	Kappa Sigma		f	t	f	{}
6yz3azvy0tdg6evtt8lx	426679276	cayes	Caye	Schnackel	Phi Beta Chi		f	t	f	{}
3ku5wxpqlfuc3jyg5ll8	260444184	broesder	Jennifer	Broesder	Phi Beta Chi		f	t	f	{}
y12c3puo4nnrztuwihxm	66993927	kbell	Katelyn	Bell	Phi Beta Chi		f	t	f	{}
osg2ydqihak08jkod9ct	608373766	scortez	Sarah	Cortez	Phi Beta Chi		f	t	f	{}
hkjnl5x0nmajx0o7opdk	972492554	johni	John	Ingwersen	Kappa Sigma		f	t	f	{"Educational Speaker"}
9da75pb2wzx4w3pxh6v3	634363750	sarahe	Sarah	Eikenberry	Phi Beta Chi		f	t	f	{}
n7iwsuwabzykqcug5ux5	141856715	mjmartin	Mandalyn	Westphal	Phi Beta Chi		f	t	f	{}
xb2ehjq8uhwun9ou1aoa	997902906	derekyu	Derek	Yu	Phi Gamma Delta		f	f	f	{}
1vgid421gb384h6xlb4b	917049133	emann13	Eric	Assmann	Phi Kappa Psi		f	f	f	{}
cif7kh4pjqq1ujqjb2ze	807470664	jsbuol	Joshua	Buol	Phi Kappa Psi		f	f	f	{}
rqj66zxdps10boc6pmfb	406512133	jonah	Jonah	Clark	Phi Kappa Psi		f	f	f	{}
w442rpinkw4ztwkaa0vg	739667953	afogelis	Andrew	Fogelis	Phi Kappa Psi		f	f	f	{}
882g21d7ixi9rkl2dm10	132466362	akees	Adam	Keesling	Phi Kappa Psi		f	f	f	{}
mtt6bb5aocs33jb6fwow	341354070	khk	Kristian	Kennedy	Phi Kappa Psi		f	f	f	{}
ppsx73yal0kqxqwr8qbk	727992265	nbkoch	Noah	Koch	Phi Kappa Psi		f	f	f	{}
w8m7qlxlyu0uq5gjq05e	693867199	jakramer	Joshua	Kramer	Phi Kappa Psi		f	f	f	{}
chs63s3yda8jcz18syf0	690154489	karch	Karch	Lathrop	Phi Kappa Psi		f	f	f	{}
wzzotra4xpyh9woyglcd	173174001	luhrt	Timothy	Luhr	Phi Kappa Psi		f	f	f	{}
4pfueifp51ywvrrlqe5d	746842096	dmathis	David	Mathis	Phi Kappa Psi		f	f	f	{}
xgvwrgqc9nq79mjyb3xh	280628348	serrano	Rogelio	Serrano	Phi Kappa Psi		f	f	f	{}
2nrzybugs51gy5zpszab	138792654	spangler	Jake	Spangler	Phi Kappa Psi		f	f	f	{}
o2dfm8mewykrizbcwnfe	828822995	vanscoy	Jordan	VanScoy	Phi Kappa Psi	Central	f	f	f	{}
3g3heqp12h6zyvtky75k	346710396	rmboydv	Robert	Boyd	Phi Kappa Theta		f	f	f	{}
xzrqcjvslhuo3qxd0kgc	199374175	jpgood	James Patrick	Good	Phi Kappa Psi		f	f	f	{"Educational Speaker"}
wdphmjbbw494s77ngcmh	763928165	rmbonus	Robert	Bonus	Phi Kappa Theta		f	f	f	{"Educational Speaker"}
rhstggsg5hyw9vvy506a	318698445	nheisler	Nicholas	Heisler	Phi Kappa Psi		f	t	f	{"Polar Bear Plunge",Broomball}
mia5b13fmxaxja6dz3kt	246598362	kgholmes	Kathryn	Holmes	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
8uhorcdd7iw89kopf55q	490794320	kkmoss	Keith	Moss	Phi Kappa Psi		t	t	f	{"Polar Bear Plunge"}
aslhqfk14vamto5vuvr5	950739790	kaneh	Kane	Hassebrock	Phi Kappa Psi		f	t	f	{"Polar Bear Plunge"}
v53x4co5cvkva2usljw8	231091861	elindley	Ethan	Lindley	Phi Kappa Psi		f	t	f	{"Polar Bear Plunge"}
hwq6f990afezlkp0tcds	791963200	awilson	Abigail	Wilson	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
hm9vqx8t43p1lcfhcauf	393593228	kdurment	Kolton	Durment	Phi Delta Theta		f	t	f	{Broomball}
5bv0el55aimy47u99aqz	967198232	aaarenas	Adolfo	Arenas	Phi Gamma Delta		f	t	f	{"Polar Bear Plunge"}
7x5vhwnm9c2pvv88lckt	254871645	mjpalmer	Micah	Palmer	Phi Kappa Psi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
b75wh6arih0zngqcm5oe	789574786	bsporrer	Benjamin	Sporrer	Phi Gamma Delta		f	t	f	{"Polar Bear Plunge"}
g7exenmf8vcex6qvoavs	600814214	jasowers	Jacob	Sowers	Phi Gamma Delta		f	t	f	{"Polar Bear Plunge"}
y4mo6vvio5d1ejsr8exk	132931842	adamsmeg	Megan	Adams	Phi Beta Chi		f	t	f	{"Lip Sync",Treds,"Polar Bear Plunge",Broomball}
idoxvwo6gyepam2j7mft	932124193	lchol	Lieb	Chol	Phi Kappa Theta		f	t	f	{Treds}
d00mppjeinmkxntr46j1	533373869	safriend	Scott	Friend	Phi Kappa Theta		f	f	f	{}
gxc7f8xahej95getm98i	513594081	cjh11	Christopher	Holmquist	Phi Kappa Theta		f	f	f	{}
mo5lt1kch4mumj0x9i05	801784984	colek	Cole	Knutson	Phi Kappa Theta		f	f	f	{}
sfwartzj3hoz01qigrid	875053206	tnm	Tyler	Mueller	Phi Kappa Theta		f	f	f	{}
bajs6fxppw1svfe9sf8p	524467968	spartans	Adam	Nelson-Ockenfels	Phi Kappa Theta		f	f	f	{}
4l8e4fpw5sa3rcthii05	142114973	jwpiercy	Jace	Piercy	Phi Kappa Theta		f	f	f	{}
63o7yc3kum6ddplp5xgj	771242472	pjpoe	Patrick	Poe	Phi Kappa Theta		f	f	f	{}
3792ijufe6qjhrcxn05r	393363006	abirm	Alec	Birmingham	Phi Delta Theta		f	t	f	{"Educational Speaker"}
g62hbnl0p56n3gltqp5m	373759386	leahm	Leah	Miller	Phi Beta Chi		f	t	f	{}
th2cu16tefn588fdiz2j	66964927	scotth13	Scott	Horvath	Phi Gamma Delta		f	t	f	{}
ihgzgrdm0tu4s0g4n0ib	883666808	zmhansen	Zachary	Hansen	Phi Gamma Delta		t	f	f	{}
yoa7s2su3x1dp1c8ek1r	81503422	mosebach	Patrick	Mosebach	Phi Gamma Delta		t	f	f	{"Lip Sync"}
vc7vm0n1v1znv5gg6m5q	950059135	njlinde	Nathan	Linde	Phi Delta Theta		t	f	f	{"Lip Sync"}
9wldwzaebelseweoqlyy	670913243	tjw33	Thomas	Woodruff	Phi Delta Theta		t	f	f	{"Educational Speaker"}
rxph05bk24xghi6t4vyv	688855191	evanpro	Evan	Prochaska	Phi Delta Theta		t	f	f	{"Lip Sync","Educational Speaker"}
kpwhnhdc2iwdlbfj0fuv	357141785	jdehaai	Jacob	DeHaai	Phi Delta Theta		t	t	f	{"Lip Sync"}
p49nrnc43ypn0b784bqv	240734494	aliciao	Alicia	O'Donnell	Alpha Sigma Kappa		f	t	f	{"Educational Speaker"}
0n35tint2yxku80swhmr	1502517	larissa1	Larissa	Starkweather	Delta Zeta		f	t	f	{}
oufc1q2obk0bmmagt7ex	363647304	salsbury	Blake	Salsbury	Delta Tau Delta		f	t	f	{"Lip Sync",Treds}
tl85snzhjvwveuhdl09z	243532289	hbnellis	Haley	Nellis	Phi Beta Chi		f	t	f	{}
yj5c297bjcgku0xv4ovn	594128535	lameier	Laurel	Meier	Phi Beta Chi		f	t	f	{}
f6bv2t5b05ufa6fyd1eh	234221031	reh220	Rosie	Hulse	Phi Beta Chi		f	t	f	{"Educational Speaker"}
hahrq79i3h4zx8dr2erz	740966226	mjsweere	Megan	Sweere	Phi Beta Chi		f	t	f	{}
j2x9zcvl4a52olith8s9	39963951	bkrieger	Bailey	Krieger	Phi Beta Chi		f	t	f	{}
xowbny9wfejypcxtjyij	320030711	cmleslie	Courtney	Leslie	Phi Beta Chi		f	t	f	{}
8gr424rxv2f69zabvxly	201157957	mngelina	Megan	Gelina	Phi Beta Chi		f	t	f	{}
w0mjkuqlzureywrf3ykx	24934910	icowan	Isaac	Cowan	Phi Gamma Delta		t	t	f	{}
hz28lmea2d6cl290xlq1	645972327	hoffmac5	Charles	Hoffman	Lambda Chi Alpha		t	t	f	{}
ucyalauad6fe1h7dhyyh	948560613	reising	Chase	Reising	Phi Kappa Theta		f	f	f	{}
avgfs1s26ej0zkinsp6k	549538016	ebenda	Emily	Benda	Pi Beta Phi		f	f	f	{}
7u2oaash3f1j1mx41997	623952357	cberg1	Caroline	Berg	Pi Beta Phi		f	f	f	{}
rkkddi3abymjzqfm0gj1	83633550	mbettis	Maren	Bettis	Pi Beta Phi		f	f	f	{}
xieilrqg46ptu6mj70ys	384929580	eclap	Elizabeth	Clappier	Pi Beta Phi		f	f	f	{}
j7hgo92gdgi38x0hs3t2	649898249	acramond	Anne	Cramond	Pi Beta Phi		f	f	f	{}
meou1hga8l1l5jn58c8z	98316246	mndlouhy	Madison	Dlouhy	Pi Beta Phi		f	f	f	{}
6sic258gz8oqsa1ry4ig	355914559	afarniok	Abby	Farniok	Pi Beta Phi	Crew	f	f	f	{}
zvzmx6yqz09tj1h7ws5d	156388264	jsweeney	James	Sweeney	Phi Kappa Theta		t	f	f	{"Lip Sync"}
mcino82ktk0zqbh3dacl	787528742	smpark	Sarah	Park	Pi Beta Phi		f	f	f	{}
qfyjjpw6ozs2485elgwv	428360933	npfrang	Nicholas	Pfrang	Phi Kappa Theta		f	f	f	{"Educational Speaker"}
ia2f0o0a6updjyjef91h	678098421	ksmetana	Kevin	Smetana	Phi Kappa Theta		f	f	f	{"Educational Speaker"}
yjd95gdx4p0v13psmxpx	955610687	jskorey	Juan	Skorey	Phi Kappa Theta		f	f	f	{"Educational Speaker"}
sy6hksp6ons2o3z9xqev	293376110	mlfoldes	Mackenzie	Foldes	Pi Beta Phi		f	f	f	{}
jd299nw6bgbi9dms6e41	433246890	francis1	Rachel	Francis	Pi Beta Phi		f	f	f	{}
axnofpbc7g45z9q3pbnb	320547227	lfriesth	Lisa	Friesth	Pi Beta Phi		f	f	f	{}
wbi0iry7wpdxu8b051im	110089107	carag	Cara	Gardner	Pi Beta Phi		f	f	f	{}
q7s5a4p00pwri31d97p7	744000279	rkgarner	Rebecca	Garner	Pi Beta Phi		f	f	f	{}
1uykqemzpiq4hk7csamn	374646272	lpgasway	Lily	Gasway	Pi Beta Phi		f	f	f	{}
c5hzwmyn3qs40fln6v4j	303853550	emgibson	Erin	Gibson	Pi Beta Phi		f	f	f	{}
e4fe9lbgoubgiskgps46	423408986	mgoblish	Megan	Goblish	Pi Beta Phi		f	f	f	{}
3m8cefsonftfn8lkn2oc	888803916	hgreenia	Haley	Greenia	Pi Beta Phi		f	f	f	{}
z6m4fwfzcn9sstl5vmvd	532777270	btjess	Brian	Jess	Phi Kappa Psi		f	t	f	{Treds,"Polar Bear Plunge"}
8n46z9l35ljto4cj2lg7	183864705	znaatz	Zachary	Naatz	Lambda Chi Alpha		t	t	f	{"Lip Sync","Polar Bear Plunge"}
7weeldqphf3vf3aygzqy	333457163	Cvinyard	Collin	Vinyard	Phi Gamma Delta		f	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
tqy9zvv7ylv1vot6kms8	534547040	gdenny	Grant	Denny	Phi Delta Theta		f	t	f	{Broomball}
7hon9sl0jupb3kj3zgbf	339902587	alambert	Anthony	Lambert	Phi Gamma Delta		f	t	f	{"Polar Bear Plunge"}
56su0p178g494naq5cve	863315453	djakrman	Daniel	Ackerman	Phi Gamma Delta		t	t	f	{"Polar Bear Plunge"}
fmfcqsfhn1ln3q4jeu5y	296253990	shaned	Shane	Dunteman	Phi Gamma Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
tan3u4wx6fqm2sesm0pk	944295352	ndburger	Nate	Burger	Phi Gamma Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
id0uqqxqjix52lv91a6o	926240315	atcliff	Aaron	Clifford	Phi Kappa Theta		f	t	f	{"Educational Speaker",Broomball}
wr5uwqa3ticovelq4ipj	320272020	bkalla	Benjamin	Kalla	Phi Kappa Psi		t	t	f	{}
lwncfnu5rsbpabaq8b0h	782487706	mkduggan	Maureen	Duggan	Pi Beta Phi		t	f	f	{}
1zbxpbhpj96sa2pxo4m0	642944327	shanders	Brian	Shanders	Phi Kappa Theta		t	f	f	{}
bidbhz8wwqykmgfy8nrm	870489644	mmkuehn	Maxwell	Kuehn	Phi Gamma Delta		t	f	f	{"Lip Sync"}
fbsid7x09qddtcd8bho9	455443989	kirstenb	Kirsten	Baartmans	Pi Beta Phi		t	f	f	{}
1c4r5fl4d91lsstyog0s	730688959	mkdugan	Madison	Dugan	Pi Beta Phi		t	f	f	{}
e387p5z9gxcr7cokkbh8	56885853	aeboyce	Amy	Boyce	Pi Beta Phi		t	t	f	{"Educational Speaker"}
b6m0o0b6eskk8sfybc3b	799083285	dwgrell	Dalton	Grell	Phi Kappa Psi		f	t	f	{}
hx57q7wztxza9tpzakx0	20011082	amz	Alexander	Ziebell	Phi Delta Theta		t	t	f	{"Lip Sync"}
ofdncdbmimhg76raadb5	606988382	patteen	Nathan	Pattee	Phi Delta Theta		f	t	f	{}
wspavi3c7mdibrz7psqe	942524611	morrison	Patrick	Morrison	Phi Delta Theta		f	t	f	{Dodgeball}
57qlbkxlxp7kd58ozerl	512369882	msr1	Michael	Robinson	Phi Delta Theta		f	t	f	{"Educational Speaker"}
a56sj0k93dl4oxc9e9x9	118590495	jschlott	Jon	Schlotterback	Phi Delta Theta		f	t	f	{Treds}
qijfz9z10i82jb3333bw	162036895	jwwolter	Joseph	Wolter	Phi Delta Theta		t	t	f	{"Lip Sync","Educational Speaker"}
idrgr9accefebbkgudvz	37780743	rtmartin	Robert	Martin	Phi Delta Theta		f	t	f	{"Educational Speaker"}
r0ryqm9s3k8z317v2ykr	156391235	brgeiger	Benjamin	Geiger	Phi Kappa Psi	Central	f	t	f	{}
ujrjzjkv3nr9lala2ikc	700355656	magruder	Mason	Magruder	Phi Delta Theta		f	t	f	{Treds}
jnnx3w1v93f2dvbphdcl	137671534	kellyr	Kelly	Ridenour	Phi Beta Chi		f	t	f	{"Educational Speaker"}
qlffn6j9uj5oc0r4qo7z	6692762	patcicci	Patrick	Cicciarelli	Phi Gamma Delta		f	t	f	{"Educational Speaker"}
3xphyk3dc81d1yijbp97	54206152	dmhanner	DeAnna	Hanner	Pi Beta Phi		f	f	f	{}
og4tjqp0mi9rvxbjjbus	909096188	kmhansen	Kristin	Hansen	Pi Beta Phi		f	f	f	{}
ta856b0vpl4219c8jxqg	365207864	kmhanson	Katherine	Hanson	Pi Beta Phi		f	f	f	{}
ozqllwvf90afm898fkxf	451410960	phedrick	Paxton	Hedrick	Pi Beta Phi		f	f	f	{}
q6rxip97a40om2wtkfs4	167182042	gah96	Genevieve	Hepworth	Pi Beta Phi		f	f	f	{}
bqqtpr9myuyoy21niq41	136515379	makherr	Makayla	Herrera	Pi Beta Phi		f	f	f	{}
lgdwv61rsi3m0gljk2et	780296517	hildreth	Zoetta	Hildreth	Pi Beta Phi		f	f	f	{}
jd9v5lqixx1b40b6lb4h	845326729	svhilts	Selina	Hilts	Pi Beta Phi		f	f	f	{}
44xoxkhmhxh9l5onntmt	102506404	mmhueser	Morgan	Hueser	Pi Beta Phi		f	f	f	{}
qgy7kufcwcnbb15t5wb3	726428703	apjahnke	Alexandria	Jahnke	Pi Beta Phi		f	f	f	{}
pxdszz4hn36a6ufpirke	335322988	jjimenez	Jessica	Jimenez	Pi Beta Phi		f	f	f	{}
ab03l2c04jrc1kvky2mc	885221373	bckalsch	Bridget	Kalsch	Pi Beta Phi		f	f	f	{}
qv7etxhjv7onhssa37l1	958655698	katekrez	Catherine	Krezowski	Pi Beta Phi		f	f	f	{}
cwsuztnkv7meicu3w0rf	838670881	emilykay	Emily	Kulhanek	Pi Beta Phi		f	f	f	{}
npyoqgmh2fnqis4qq9lq	628082500	mlamb	Mallory	Lamb	Pi Beta Phi		f	f	f	{}
7kuce7h6g52bg9rimqtp	942508567	melien	Megan	Lien	Pi Beta Phi		f	f	f	{}
qvmv7kfjzwu3f0x0v9l7	638980366	nicolem	Nicole	Mahowald	Pi Beta Phi		f	f	f	{}
x59znyx1ercqqdl6kdoj	465575110	emcmann	Emily	McMann	Pi Beta Phi		f	f	f	{}
knd9xc7xpyrdlf6x1sys	498017548	kymcmurr	Kylie	McMurray	Pi Beta Phi		f	f	f	{}
retxy2kul9cuu6v0mjqd	191557366	sammimac	Samantha	McNamara	Pi Beta Phi		f	f	f	{}
q5gy5ls2rg4d2644q6eq	605030458	srm2	Savannah	Mendenhall	Pi Beta Phi		f	f	f	{}
vj2c0rmrxg065ew7cof0	187364201	aemies	Ashley	Mies	Pi Beta Phi		f	f	f	{}
ts13n89de17rjxt2wb70	604159556	mmillies	McKenna	Millies	Pi Beta Phi		f	f	f	{}
4ils9qq0a493fnmrylre	354179826	srmoody	Shannon	Moody	Pi Beta Phi		f	f	f	{}
4vzrkgoahxsml1jx7fem	625999402	audreym	Audrey	Muehlebach	Pi Beta Phi		f	f	f	{}
a56lz42zj2npxne95gz7	218373215	rknoble	Riley	Noble	Pi Beta Phi		f	f	f	{}
pv4zr5991a3ajrpahovx	252927675	clherrig	Catherine	Herrig	Pi Beta Phi		f	f	f	{"Educational Speaker"}
aqbi2c8t4lcds31uft4k	272288016	cprevet	Christina	Prevette	Pi Beta Phi		f	f	f	{}
9rhshliuzaui0cgjweer	756686931	slrahn	Shelby	Rahn	Pi Beta Phi		f	f	f	{}
w6hrzbzgcfuhfk0fz0tt	738771033	codywest	Cody	West	Phi Kappa Psi		f	t	f	{"Trivia Blast","Polar Bear Plunge"}
vj9dbz6olsc60wlcgqnv	560258724	ssandven	Skyler	Sandven	Phi Kappa Psi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
dnnpk6mev6ttnkdid8eh	355869514	bbest	Blaze	Best	Phi Kappa Psi		t	t	f	{"Lip Sync",Treds,"Polar Bear Plunge"}
6u930k8kn7zhiwhkftwv	78181139	msgood	Matthew	Scattergood	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
tn59j5aipsuecivnqpjm	669480832	srm	Samuel	Manning	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
jr7qjwiqgvow7x5mw755	510134653	mattruk	Matthew	Rukavina	Phi Kappa Psi		t	t	f	{"Polar Bear Plunge"}
99h26gq7ylh77t2y9eot	658028399	scburger	Scott	Burger	Phi Gamma Delta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
gjhoyiws29ws7l1qyei6	351731393	Mpokora	Mitchell	Pokora	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
6239df14gn7eo1b1v81b	491808346	amessina	Andrew	Messina	Phi Gamma Delta		f	t	f	{"Polar Bear Plunge"}
69sy1x8ucnhrd5c6suk1	595537943	zalban	Zachary	Alban	Phi Kappa Psi		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
asttzqbag3x0alkt18w8	389546157	apitz	Allison	Pitz	Pi Beta Phi		f	t	f	{Dodgeball}
u1bdmnjgskedkkc40wpk	375881534	klrex	Kara	Rex	Pi Beta Phi		f	f	f	{}
mvfcfedlvqw261ifxpah	830022193	karusher	Kayla	Rusher	Pi Beta Phi		f	f	f	{}
nwz2gfgebu6z5bl4z74z	920175288	tws	Taylor	Silvestrini	Pi Beta Phi		f	f	f	{}
s2h9144ww84qfff3xwji	804779000	ptomasko	Paige	Tomasko	Pi Beta Phi		f	f	f	{}
ybipz4d025u7u12tbd5d	695233539	lvilla	Lissandra	Villa	Pi Beta Phi		f	f	f	{}
u56s7ccwwf9bt1izf4wn	112754642	aburney	Abbie	Burney	Pi Beta Phi	Crew	f	t	f	{}
ljcctwl8pfdf2lx7xl2y	934833928	jthurin	Joseph	Thurin	Phi Kappa Psi	Crew	f	t	f	{}
odap9fdzc92jpvosr6pb	794906112	katiec	Katie	Carpenter	Pi Beta Phi		f	t	f	{}
kyvzrdod3he9ibbt8pmb	839923112	afridgen	Abigail	Fridgen	Pi Beta Phi		t	f	f	{}
exvgi7jdk0jwmthu9lsd	980268306	davidj	David	Jordan	Phi Kappa Theta		t	f	f	{"Educational Speaker"}
1ch319nim7yoa1xo60w2	511127637	msquinn	Matthew	Quinn	Phi Kappa Theta		t	f	f	{"Lip Sync","Educational Speaker"}
06il5dd6w35g4oepfq1p	510170680	jjoines	Justin	Joines	Phi Kappa Theta		t	f	f	{"Educational Speaker"}
9rm7fysyd6u76opvq7yj	808654875	fritsche	Daniel	Fritsche	Phi Kappa Theta		t	f	f	{"Educational Speaker"}
xpcb0oluogugxcsqlbcv	319152866	mgking	Margaret	King	Pi Beta Phi		t	f	f	{}
zmq9bq92wya88ufkvmq1	105004927	ruer	Riley	Rue	Phi Kappa Psi		t	f	f	{"Lip Sync","Educational Speaker"}
zirdw6j3usjv019ys1uu	725067343	m7j3	Matthew	Johnston	Phi Kappa Psi		f	t	f	{"Educational Speaker"}
x7zk0xdat0d8pa907w24	546202716	dannyg	Daniel	Gustafson	Phi Gamma Delta		f	t	f	{"Lip Sync"}
l49pbazxtama1vh4qkik	168120953	ejtemme	Everett	Temme	Phi Kappa Psi		f	t	f	{}
1em0ytcvcmtdmwow3fon	864484661	acstrand	Andrew	Strand	Phi Kappa Psi		f	t	f	{}
0ds4gu9vsn475mnd0fq9	737128392	amflynn	Anthony	Flynn	Phi Kappa Psi		f	t	f	{}
uzy2ey9bo3cljbhsdcib	134775641	scwaste	Sarah	Waste	Pi Beta Phi		f	f	f	{}
bosoh5a4ur2s460wh8b1	761194458	mwellner	Megan	Wellner	Pi Beta Phi		f	f	f	{}
vpnysztdhnawchru1fji	137248111	mnwhite	Mackenzie	White	Pi Beta Phi		f	f	f	{}
00k3gm30azsxxcrx01fq	344497225	mawill	Madeline	Will	Pi Beta Phi		f	f	f	{}
g5mfkvqf6ey4hrjy1ffh	127377271	kwohlers	Katherine	Wohlers	Pi Beta Phi		f	f	f	{}
voq3gw1xqdb5ohehemrv	759634876	ktwolt1	Katelyn	Woltkamp	Pi Beta Phi		f	f	f	{}
4lzppcqowuymnbgmosho	622935313	mattack	Matthew	Ackerman	Pi Kappa Alpha		f	f	f	{}
qili6q4k33opzbvila4o	225834609	ebergman	Evan	Bergman	Pi Kappa Alpha		f	f	f	{}
242vvo6uqbhag4qs9uf3	402630244	jjbowman	Jason	Bowman	Pi Kappa Alpha		f	f	f	{}
9xwssjkd1c0s8f7474d5	943988045	jrb	John	Brammeier	Pi Kappa Alpha		f	f	f	{}
ng88xi4j5nnh7qcoj73k	351009659	mdetorre	Michael	Detorre	Pi Kappa Alpha		f	f	f	{}
66iywsqr22mb22ky49b2	596478883	mikeduch	Michael	Ducharme	Pi Kappa Alpha		f	f	f	{}
u17e780gx6yj94tq8zfr	675140466	jbdugan	Joseph	Dugan	Pi Kappa Alpha		f	f	f	{}
r9plvdp6wyvguv0yi7nx	386431065	samluke	Samuel	Featherstone	Pi Kappa Alpha		f	f	f	{}
d28tgza1wcpo1zt89hgs	977165213	bdfitzel	Blake	Fitzel	Pi Kappa Alpha		f	f	f	{}
87s22ynhfhlmh2zcimig	838906092	tfratzke	Thomas	Fratzke	Pi Kappa Alpha		f	f	f	{}
c5sygbfnxxvc1hn93lnm	659571941	jake	William	Gallaher	Pi Kappa Alpha		f	f	f	{}
ejz9o3vl0azafcebdlxh	843166324	agude	William	Gude	Pi Kappa Alpha		f	f	f	{}
x77pg0fw1qxn1ssw8apy	196357161	hodgson1	Adam	Hodgson	Pi Kappa Alpha		f	f	f	{}
okj5zhi7u7fnyle6v542	827062236	jacksonb	Bradley	Jackson	Pi Kappa Alpha		f	f	f	{}
2d7vehmn5ruz8c19wq3h	598796198	kjewett	Kingsley	Jewett	Pi Kappa Alpha		f	f	f	{}
7kczoya2axssfv85i1lp	808380573	morgans	Morgan	Stonewall	Pi Beta Phi		f	f	f	{"Educational Speaker"}
nqinfxvyew047ec81t0v	561467939	larsj	Lars	Johnson	Pi Kappa Alpha		f	f	f	{}
q3aepca3ibjuslcypk7t	710680002	plashier	Peter	Lashier	Pi Kappa Alpha		f	f	f	{}
o305hklrh7cgqg1ldh8p	228591363	sjlink	Stephen	Link	Pi Kappa Alpha		f	f	f	{}
ky7mi8zovl9988lw68jg	988201214	courtm	Court	Mac Gregor	Pi Kappa Alpha		f	f	f	{}
di6mfhlizmm1w1po48rv	872452581	jmcentee	Jacob	McEntee	Pi Kappa Alpha	Central	f	f	f	{}
ppqwqlsnz2fva0fdgi7k	369781447	ksmacrae	Kayla	Macrae	Pi Beta Phi		t	f	f	{}
qb5a5gvklq5ygza2f2kn	858777947	mamapes	Mara	Mapes	Pi Beta Phi		t	t	f	{"Lip Sync",Treds}
erpcehfcvq2yfaxruwv4	583497939	epburden	Emilie	Burden	Pi Beta Phi		t	f	f	{"Educational Speaker"}
g05pjmkl5nerssjqbp1p	991868878	hhustedt	Halei	Hustedt	Pi Beta Phi		t	f	f	{}
i5mqmx5r51azmnkkf7n4	341143831	jwbarker	Jordan	Barker	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
jmkepqiprqdwgonwr6pj	861632772	jlbries	Jordan	Bries	Phi Kappa Psi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
k607fz82gaauirqwvy1w	258876618	znickles	Zachary	Nickles	Phi Kappa Psi		f	t	f	{"Polar Bear Plunge"}
hmm2bv6ycd3n5is1j7ix	388732360	ceerdman	Charlie	Erdman	Phi Kappa Psi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
qhs2g02j3l51jmi2gz6c	403280878	colbyw	Colby	Woodvine	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
w3gie83cm0zrb61xtnnz	44608564	mebrandt	Michael	Brandt	Phi Gamma Delta		f	t	f	{"Karaoke 1st Cuts","Educational Speaker","Lip Sync",Treds,"Polar Bear Plunge"}
nt02mn9q6vvztjpxqkwy	377392015	mloebig	Maxwell	Loebig	Phi Gamma Delta		f	t	f	{"Lip Sync","Polar Bear Plunge"}
6part4km75iu1j62dnyi	585943358	dbattel	David	Battel	Phi Kappa Psi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
41wp9bbe73hn1n00op0y	264520297	taydavis	Taylor	Davis	Pi Beta Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
f6iuftlh040a0jwr26na	64221157	smithsj	Shelby	Smith	Pi Beta Phi		t	f	f	{}
l201x14mrli1y9dmoqkv	153642513	kmlenson	Katherine	Lenson	Pi Beta Phi		t	f	f	{}
9xrjudsfa1712hxo8z9y	578839301	shustedt	Sydney	Hustedt	Pi Beta Phi		t	f	f	{}
35qg0l70b4ls3wakbccl	738702997	hnsmith	Hannah	Smith	Pi Beta Phi		t	f	f	{}
ho594bq5c7fz12d26lei	359912582	rmixan	Rebecca	Mixan	Pi Beta Phi		t	f	f	{}
dgmnlfh4nlmobo528uzc	510202708	magweber	Maggie	Weber	Pi Beta Phi		t	f	f	{}
ohwyvya00oiaz1fbnfv7	384009626	ekrink	Emma	Rink	Pi Beta Phi		t	f	f	{}
9fvn1zug4ha5iscnyu0c	462254817	clynch	Carley	Lynch	Pi Beta Phi		t	f	f	{}
vchjtlq968pcxp2soemr	429014611	lkyoung	Lauren	Young	Pi Beta Phi		t	f	f	{}
8rpq5oi4xdabxk4p6kqb	27869842	kmlisow	Kelsey	Lisowski	Pi Beta Phi		t	f	f	{}
2mlw36u6upklx7tp80lk	799716941	caliw	Cali	Westergard	Pi Beta Phi		t	f	f	{}
xtpn54qpsh98y40dagkq	8330354	hemeador	Hannah	Meador	Pi Beta Phi	Central	f	t	f	{}
2a4kgzic4pgth1b4dxmu	281775494	amartin	Alisha	Martin	Pi Beta Phi		t	f	f	{}
qmndpjk5r4ip5phuxzo6	175395220	apiraino	Avery	Piraino	Pi Beta Phi		t	f	f	{}
59zix5dt50vpr0jb27ir	773119347	cmglynn	Cassidy	Glynn	Pi Beta Phi		t	f	f	{"Educational Speaker"}
59zr8scy388h98ew617f	539199736	seoswalt	Shane	Oswalt	Pi Beta Phi		t	f	f	{}
08oqqb8mwa3wmo6xz8zv	636113543	mschleif	Madeline	Schleif	Pi Beta Phi		t	f	f	{"Lip Sync"}
wyf5oltpyf0nrjauwhgr	907058180	mvong	Melanie	Vong	Pi Beta Phi		t	f	f	{}
7mc5dzt38y4g6x2t7k1c	936915046	kwall636	Kennedy	Wall	Pi Beta Phi		t	f	f	{}
xoxb42lv3842wxwmgad1	750221496	boujuli	Julie	Bouthillier	Pi Beta Phi		t	t	f	{}
7hxgoq5ahmanougvj8sx	862530693	jessto	Jessica	Ohrnstein	Phi Beta Chi		f	t	f	{}
ij0os6f7ise9q59fib40	613605020	tfoust	Travis	Foust	Beta Sigma Psi		f	t	f	{}
62lxbcupzlcrnby4rr6i	894139286	arbogast	Davis	Arbogast	Phi Kappa Theta		f	t	f	{}
uevhjx0lhbm5w0crdyz5	53114061	slb1	Stephanie	Burkhart	Kappa Alpha Theta		f	t	f	{}
a9vghgwrx5gj4xgtlm2x	656892236	moeller2	Andrew	Moeller	Pi Kappa Alpha		f	f	f	{}
0lu5z4f2dyatmj7r9f1y	227844617	bmosley	Brant	Mosley	Pi Kappa Alpha		f	f	f	{}
kfvvbky2jf46gt23k3o6	87423336	samueln	Samuel	Navratil	Pi Kappa Alpha		f	f	f	{}
599z4dtnsz095xualn6g	304435131	amperez	Anthony	Perez	Pi Kappa Alpha		f	f	f	{}
ile1ypn5mwud6nr88vsb	197158962	njpizano	Noah	Pizano	Pi Kappa Alpha		f	f	f	{}
azk4gn5fssjwiynvsneu	807934127	kjprince	Kevin	Prince	Pi Kappa Alpha		f	f	f	{}
w46b1qsq6hf6qk0uvxnl	721011291	rickordb	Brett	Rickord	Pi Kappa Alpha		f	f	f	{}
9rv19r0kiv0g5p93jha3	693580912	riscossa	Nicholas	Riscossa	Pi Kappa Alpha		f	f	f	{}
8uu9k2pmuvbgmi2e9yzb	45872827	dillonr1	Dillon	Robinson	Pi Kappa Alpha		f	f	f	{}
nunbjdc1xcvwb2yagqbw	467723256	tmryan	Thomas	Ryan	Pi Kappa Alpha		f	f	f	{}
azxk6pj4cvu30s0ox43x	657970313	jrs1	Joshua	Schroeder	Pi Kappa Alpha		f	f	f	{}
0doew9gfjp4001fvmiol	232508339	msiebert	Michael	Siebert	Pi Kappa Alpha		f	f	f	{}
9n527vpwpok3s63la5ib	201893692	bsjoblom	Brett	Sjoblom	Pi Kappa Alpha		f	f	f	{}
795urepj3npnu1tsnwk1	885058207	dspillum	Daniel	Spillum	Pi Kappa Alpha		f	f	f	{}
o50n4k5qxwpl71dsej00	386462108	wjstaats	William	Staats	Pi Kappa Alpha		f	f	f	{}
n0lg0gk0f0y5qvfdmwri	37498489	samv	Sam	Vogelsberg	Pi Kappa Alpha		f	f	f	{}
yo148e0sbrnmiczkbqj5	955165272	iabdalla	Ibrahim	Abdalla	Pi Kappa Phi		f	f	f	{}
5j18wxosqhkryec3zfe0	349103755	dionne94	Alex	Dionne	Pi Kappa Phi		f	f	f	{}
vb6hi33l6vplpya0xwip	594503910	idd5	Isaac	Droessler	Pi Kappa Phi		f	f	f	{}
f1qsmefg7jr7fi767d8n	807030224	weiland5	Christian	Weiland	Pi Kappa Alpha		f	t	f	{"Karaoke 1st Cuts"}
4nedw7yjea73gb3wkvkp	421121701	jdmoench	Jackson	Moench	Pi Kappa Phi		f	f	f	{}
qgox6vamk3nnhv8mkr64	308832560	djpace	Daniel	Pace	Pi Kappa Phi		f	f	f	{}
a8bhcp27gt32ttgm3zb4	744450735	jpervan	Joseph	Pervan	Pi Kappa Phi		f	f	f	{}
gw8thipquu0c5dcoatde	153325172	rpriewe	Robert	Priewe	Pi Kappa Phi		f	f	f	{}
hu2izdqe07xauxcjslc7	28957982	derobins	David	Robins	Pi Kappa Phi		f	f	f	{}
qloq0ijp2rxh8to0li55	961853914	jacobs	Jacob	Schleining	Pi Kappa Phi		f	f	f	{}
vo4jn0xdqzipz06hoecf	622721123	malloryw	Mallory	Wilson	Pi Beta Phi		f	t	f	{}
c28rms9bfrt311c2urdq	759221487	ocweaver	Olivia	Weaver	Pi Beta Phi	Crew	f	t	f	{}
oz58u9tjyotmb935a8nh	874846016	mjkelly	Martin	Kelly	Phi Kappa Psi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
s1sxoemkkjt6vmm9xq06	78000923	ricks	Rick	Smith	Phi Kappa Psi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
sxja7ljrg20onk8yp46t	390228839	evanmb	Evan	Blackwell	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
dq15o48380gc11bx49xn	392721329	tsundby	Turner	Sundby	Pi Kappa Alpha		t	t	f	{"Karaoke 1st Cuts","Polar Bear Plunge"}
rfk63ywzqu4wr01dte0o	896254359	hannahs1	Hannah	Schlueter	Pi Beta Phi		t	t	f	{"Polar Bear Plunge"}
168lrk55xihy1rckvgxp	343440173	nredmond	Nicholas	Redmond	Phi Kappa Theta		f	t	f	{Broomball}
quwpzwxz6b0i12icgdbr	128009882	cbro	Carly	Bro	Pi Beta Phi		t	t	f	{"Lip Sync",Broomball}
jo380h2x8253w6y8zkkq	573349792	mnelson1	Madison	Nelson	Pi Beta Phi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
f6vu9ut79f1n5n60x907	617689100	jbly	Jack	Bly	Pi Kappa Phi		t	t	f	{"Polar Bear Plunge"}
byf4qbj6t2l38wxrtu8l	115890775	lmoor	Lindsey	Moor	Pi Beta Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
ngsnyoztj9jcch2scdel	56083051	bretth	Brett	Hall	Pi Kappa Phi		f	t	f	{"Polar Bear Plunge"}
wjkm2uxs03d8criey3gd	449226778	apasse	Andrea	Passe	Pi Beta Phi		f	t	f	{Broomball}
b0ax81d6snx9rhpuz3a8	283193911	lnelson	Lauren	Nelson	Pi Beta Phi		t	f	f	{"Lip Sync","Educational Speaker"}
4qfz6zzv4m8raci1jfeo	65848783	armarino	Ali	Marino	Pi Beta Phi		t	f	f	{"Lip Sync","Educational Speaker"}
olrqjtye3ic85j1g56r1	234265031	lmillen	Lauren	Millen	Pi Beta Phi		f	t	f	{Volleyball}
j7hfp4ysowprazbelxbn	740883143	shill001	Sydney	Hill	Pi Beta Phi		f	t	f	{}
0j39x6wqjjuktuyha5d8	74839765	mpollitt	Miranda	Pollitt	Pi Beta Phi		f	t	f	{}
wxtei6tjncllilb9dzci	426827401	mwinegar	Megan	Winegar	Pi Beta Phi		f	t	f	{"Educational Speaker"}
rsigkw6lxh9thsgcg4tb	886539654	atfrost	Allison	Frost	Pi Beta Phi		f	t	f	{}
bg7i4mlc41p98zto448f	318882592	cmhoward	Carlie	Howard	Pi Beta Phi		f	t	f	{}
49xeoyo7ekfymx1qnhlc	782897115	jnfrank	Jennifer	Frank	Pi Beta Phi		f	t	f	{}
jjqaswqs7lemcn7cblbq	902601700	csincox	Claire	Sincox	Pi Beta Phi		f	t	f	{}
yfahlbtqx6adkpab9x41	871591721	vmwhite	Veronica	White	Pi Beta Phi		f	t	f	{}
wr8f4xk6c4t8qbl3aene	390091730	cadust	Courtney	Dust	Pi Beta Phi		t	t	f	{"Lip Sync"}
moq77u3eplososkhpyjb	965043079	rlwalz	Rachel	Walz	Pi Beta Phi		f	t	f	{}
uppa9qcez0aklb3zl9rr	431340017	ainelson	Amy	Nelson	Pi Beta Phi		f	t	f	{}
plpbt3dnlf3ivkldohzz	313672359	sullrich	Shelby	Ullrich	Pi Beta Phi		f	t	f	{}
rtfa8ft4rb0rr2b6f8zj	175901726	bclozier	Bethany	Lozier	Pi Beta Phi		f	t	f	{}
7nsp7b4gtwmwmuapv3hc	106725619	cnoeller	Cody	Noeller	Phi Kappa Theta		f	t	f	{"Educational Speaker"}
bie21drwqa4aerzi364l	709159523	samfitz	Samuel	Fitzgerald	Phi Kappa Theta		t	t	f	{"Lip Sync"}
cas3tpzcre8nysgvp28h	951779829	kales	Kale	Singleton	Pi Kappa Alpha		f	t	f	{}
5fk544qothnkadyh81uu	301482181	ampoock	Austin	Poock	Pi Kappa Phi		f	t	f	{}
9vsw1e4headz8zbsz02z	437492094	tnorgren	Tyler	Norgren	Pi Kappa Alpha		f	t	f	{}
h6v64r2abboqt6zdner2	42478472	vll	Vincent	Locascio	Pi Kappa Alpha		f	t	f	{}
o8rk6227kw80k3g9687n	65511477	mbl	Michael	Lindemann	Pi Kappa Alpha		f	t	f	{}
o80j9axehjm2n1x26uxt	548920396	rh1	Richard	Hamilton	Pi Kappa Alpha		f	t	f	{}
v25dgor07rjt5zion8nu	906623742	kdolan	Kyle	Dolan	Pi Kappa Alpha		f	t	f	{}
4s2wxeqe7in9wnqzx1ch	893428605	jgil	Jesus	Gil	Pi Kappa Alpha		f	t	f	{}
km9h37gi8ey02tr8uoiv	414257872	wpfee	William	Fee	Pi Kappa Alpha		f	t	f	{}
2m5huroxpbdy2wswugpi	267995728	abridges	Alec	Bridges	Pi Kappa Alpha		f	t	f	{}
93340qn1jn9phvuyrrga	663487825	alecu	Alec	Underwood	Pi Kappa Phi		f	f	f	{}
s5ih82xr04pe3jygyvdr	834911077	meberth	Michael	Eberth	Sigma Chi		f	f	f	{}
barc81pg5llw4zqqykjq	629626998	bmkrause	Benjamin	Krause	Sigma Chi		f	f	f	{}
au93km0qc0c8buohi3pb	181274093	balavery	Brandon	Lavery	Sigma Chi		f	f	f	{}
d1qbve76wvptpnitvna9	200838638	rcrojina	Robert	Rojina	Sigma Chi		f	f	f	{}
5xozue80d3mf3k4ny44n	215978763	Nicka15	Nicholas	Adams	Sigma Chi		f	f	f	{"Educational Speaker"}
yydglb8l3bbxs6qxpi7i	197084391	bccoker	Brandton	Coker	Sigma Chi		f	f	f	{"Educational Speaker"}
ovi6d9h5gl2j4o6x6t0s	987598612	jbunkers	Justin	Bunkers	Sigma Chi		f	f	f	{"Educational Speaker"}
r650p2zhxycgim8h5vvn	913955042	jshep	John	Sheppard	Sigma Chi		f	f	f	{}
1tqtgtx507bc5nd2mlik	59058063	anjaa	Anja	Amundson	Sigma Kappa		f	f	f	{}
gtf5u2ssdzlhjc6y9fmh	911557675	emboyer	Elizabeth	Boyer	Sigma Kappa		f	f	f	{}
4tjosg858lyqffg2nfa1	146767645	hbrown	Hannah	Brown	Sigma Kappa		f	f	f	{}
k377ue2seifrnxdvvn6a	267191953	eclouser	Emily	Clouser	Sigma Kappa		f	f	f	{}
soxy2y9dvmmlmcg6n54f	176585409	eacondon	Emily	Condon	Sigma Kappa		f	f	f	{}
4spzead0gynknwzk66ab	948284801	mrdavis	Madison	Davis	Sigma Kappa		f	f	f	{}
gxlldjrypbtomko95pil	972661690	cadeneve	Catherine	DeNeve	Sigma Kappa		f	f	f	{}
8zov7mwfjagwxb8v2lex	821798014	kaf	Kimberly	Ferguson	Sigma Kappa	Crew	f	f	f	{}
qezfo7uhys1ufj969bti	272930658	sgibbons	Stephanie	Gibbons	Sigma Kappa		f	f	f	{}
l79vd1o41eb4pi4xy03q	862523662	mgoodman	Michelle	Goodman	Sigma Kappa		f	f	f	{}
l7tvi4ul78lmtdwmm7pi	431949518	LHaLLend	Lauren	Hallendorff	Sigma Kappa		f	f	f	{}
f2p9qojqd4hy4j913qvo	403555180	johnmci	John	McInerney	Pi Kappa Alpha		f	t	f	{"Educational Speaker"}
tlzm6j12uvy28b2c7agh	989238275	rfranks	Robert	Franks	Pi Kappa Alpha		f	t	f	{}
hzltyhjsoqbcobcnn4dq	430846416	sherrera	Scott	Herrera	Pi Kappa Alpha		f	t	f	{}
n8xr5kimj3exqofe0sna	531477975	skelly1	Shane	Kelly	Pi Kappa Alpha		f	t	f	{}
rjar0cilo7ecftkofxz1	436252849	jastanek	Jacob	Stanek	Pi Kappa Alpha		f	t	f	{}
8gx635hfawezrlvsg58b	870298469	bmackley	Brian	Mackley	Pi Kappa Phi		t	f	f	{"Lip Sync"}
gl6to85wuhp4rmmk88t1	548701178	riccit8	Tony	Ricci	Pi Kappa Phi		t	f	f	{}
9rz45h9p50dvuqpotzf6	601826249	smj	Sydney	Johnston	Pi Beta Phi		f	t	f	{"Polar Bear Plunge"}
iveo7lrlai6i54vmz1b0	744986278	mreher	Matthew	Reher	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
ms17ov7a7j56swpnpwbi	967469503	gauthier	Tomas	Gauthier	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
3ivvf56qpx8bdho5gmba	312431144	iwrobey	Isaac	Robey	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
3mkzwjzl0u9jw2zzvx61	333421088	suljic	Ahmo	Suljic	Pi Kappa Phi		f	t	f	{"Polar Bear Plunge"}
d8se20x23i2927ta6klr	52267239	len910	Ted	Lenaerts	Pi Kappa Phi		f	t	f	{"Polar Bear Plunge"}
bkilgt7evlvbcvulhau1	78459410	cfil	Christopher	Filicette	Pi Kappa Phi		t	t	f	{"Polar Bear Plunge"}
h9dbyl48fgen15yfr43a	448683235	nherrera	Nicholas	Herrera	Pi Kappa Alpha		t	t	f	{"Lip Sync",Broomball}
bk18w4wo75g3of98sfph	499591121	joshuar1	Joshua	Reichert	Pi Kappa Phi		t	t	f	{"Polar Bear Plunge"}
7dnjgrli6q3jniaqmibv	318826544	mbeaver	Michael	Beaver	Sigma Chi		t	f	f	{"Educational Speaker","Lip Sync"}
b8r7pznjak92qgp3ytye	540205679	mjlettow	Mitchell	Lettow	Pi Kappa Phi		t	t	f	{"Karaoke 1st Cuts"}
mk6kpldxg5ncktkzkd96	949405457	ens	Emily	Smith	Pi Beta Phi		f	t	f	{Volleyball,Basketball}
0mctfdsa53cwhr79lxel	202197028	nsuvorov	Nikita	Suvorov	Sigma Chi	Central	f	t	f	{}
yudss4b1e5n17niw5qyv	460969545	logans	Logan	Schlachter	Pi Kappa Phi		f	t	f	{}
zephyvpedo5c2c2dwegn	292144886	abillick	Andrew	Billick	Pi Kappa Phi		f	t	f	{}
hz82afphiwr97wsv57kl	278502255	jxglass	James	Glass	Pi Kappa Phi	Crew	f	t	f	{}
9q6f3qhn2mkp9zxn4m0b	428624196	zrstanek	Zachary	Stanek	Pi Kappa Alpha		t	t	f	{}
ufj7b326f5yy4cpu5y36	196810637	wtrossen	William	Trossen	Pi Kappa Alpha		t	t	f	{}
todzggsix7arpx93g1xr	710432755	djharvey	Devin	Harvey	Pi Kappa Alpha		f	t	f	{}
an4h2psh2w4rh14m9j3g	724858161	pflynn	Peter	Flynn	Pi Kappa Alpha		f	t	f	{}
kf17manrsoil1sw2pfj2	742382665	buerster	Hunter	Buerster	Pi Kappa Alpha		f	t	f	{}
uelefb0f7vl0t0brr8nz	784956172	rjm16	Robert	Marshall	Pi Kappa Alpha		f	t	f	{}
jxtb9qieykutcerkr5e7	431078672	orehosky	Stephen	Orehosky	Pi Kappa Alpha		t	t	f	{}
b2ylit849d1vzryqdlu6	338833495	luetgers	Sam	Luetgers	Pi Kappa Alpha		f	t	f	{Basketball}
cf0bm526aqyfn3qpq8j5	722188482	grantjg	Grant	Gaertner	Pi Kappa Alpha		f	t	f	{}
puk0iuxepfq03bqqlwr1	978884935	ryan32	Ryan	Matthews	Pi Kappa Alpha		t	t	f	{}
4tpoq8axp63p0o1lhoc7	150253128	tcrickon	Trevor	Crickon	Pi Kappa Alpha		f	t	f	{}
iqakqdo38cc7cv37mdk3	976568609	tashford	Thomas	Ashford	Pi Kappa Alpha		f	t	f	{}
nidighjin0t2jixxrw23	944877962	wmbann	William	Bann	Pi Kappa Alpha		f	t	f	{}
b12cb7nsjjmtitfzc9dr	330042741	zda	Zachary	Anderson	Pi Kappa Alpha		f	t	f	{}
x2gjj4y229p6b3war23z	314104823	kjo	Kyle	Orehosky	Pi Kappa Alpha		t	t	f	{}
qyw1c16hxz8nlb52eh11	695510816	hharless	Hannah	Harless	Sigma Kappa		f	f	f	{"Educational Speaker"}
b2xf94d80c4zv7jj5nru	265494261	hadinnis	Hannah	Dinnis	Sigma Kappa		f	f	f	{"Educational Speaker"}
js7fiw1lvomc7oq57yt9	602431861	eadamico	Elisa	Damico	Sigma Kappa		f	f	f	{"Educational Speaker"}
hu93i0ktxa8ixw3qdkov	336085750	cscolin	Cynthia	Colin	Sigma Kappa		f	f	f	{"Educational Speaker"}
jiszbww654y5hafc8y0g	119872753	cshines	Calli	Hines	Sigma Kappa		f	f	f	{}
twlae72pqrjt9mka5ln6	197223026	hmhughes	Hannah	Hughes	Sigma Kappa		f	f	f	{}
m2kxnbnqk0k0akkipv4x	239027813	aejochim	Amy	Jochim	Sigma Kappa		f	f	f	{}
wy53vjzdd8gy0qpf1qk2	809993184	jkruse2	Jennifer	Kruse	Sigma Kappa	Crew	f	f	f	{}
ilae596fov2utt14yasy	751298548	mclaqua	Madeline	LaQua	Sigma Kappa		f	f	f	{}
e4kb8a9fgrrkoktho15u	360132773	pmross	Paige	Ross	Sigma Kappa		f	f	f	{}
dv7x8o31as8ha84uiyd9	265475210	morgans1	Morgan	Schmaltz	Sigma Kappa		f	f	f	{}
ejdh5qzceap3i6v7jvwo	165807642	locascio	Lucy	Locascio	Sigma Kappa		t	f	f	{}
alvtzup6njhz7g805k4n	652562931	abiegger	Austin	Biegger	Pi Kappa Alpha		f	t	f	{}
h6bciw6ex091u0pphlbw	298591293	obrindal	Olivia	Rindal	Sigma Kappa		t	f	f	{}
6i3ikva8usdx85niicq9	364477225	ageneser	Amber	Geneser	Sigma Kappa		t	f	f	{"Educational Speaker"}
1ytgzgpe6nuog9lhkg99	973060088	kdonovan	Katelyn	Donovan	Sigma Kappa		t	f	f	{"Educational Speaker"}
91ffb3gpp5kfvjaxifom	426947538	rachel1	Rachel	Brimeyer	Sigma Kappa		t	f	f	{}
y4cb8r4fmd3gslmev4lq	809420784	jaw	Justin	Whitehouse	Sigma Chi		f	t	f	{"Educational Speaker"}
ybw4um13uf154095th2q	752341590	Splummer	Sam	Plummer	Sigma Chi		f	t	f	{}
20bewbzf2gfx4snlbzyu	714330617	mthennes	Marc	Thennes	Sigma Chi		f	t	f	{}
rkn9kipns871387p9v7o	128321217	Jdoyle	Jack	Doyle	Sigma Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
a3ngdpjucot31d3yzktg	15582592	mmack	Michelle	Mack	Sigma Kappa		t	t	f	{"Polar Bear Plunge"}
xed8an508khgpcqqhliq	617321736	halban	Haley	Alban	Sigma Kappa		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
bs69fumhnx33k3d2orv3	563485952	takeener	Taylor	Keener	Sigma Kappa		f	t	f	{"Polar Bear Plunge"}
xjbde7fhn22txb6cdqx6	792207847	sarah2	Sarah	Schliesman	Sigma Kappa		f	t	f	{"Polar Bear Plunge"}
lu4kmfkrbs8ls0cglibi	696720092	goebeler	Sarah	Goebeler	Sigma Kappa		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
junx45reczf8pim080sf	930064135	amzarr	Andrew	Zarr	Sigma Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
nk23n9r6ztx3by72xj85	570992438	nsfraley	Nicholas	Fraley	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
jfcw4sbsyupk3kcil2ap	374454080	estevens	Eric	Stevens	Sigma Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
zdpi6sob0kdvt2s15fvt	130747645	mmiltner	Max	Miltner	Sigma Chi		f	t	f	{"Lip Sync","Polar Bear Plunge"}
25hr30dx8x15wnzqm3vi	566014469	Cjlovich	Collin	Lovich	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
x3amv13kjemc0i12nf88	158253095	jfoley55	John	Foley	Sigma Chi		f	t	f	{"Educational Speaker",Basketball,"Polar Bear Plunge"}
rb712jnyuf2bppy1m8u6	809241433	ajr1	Alexander	Riesberg	Pi Kappa Alpha		f	t	f	{"Polar Bear Plunge"}
rpwl4kl4wuevs6isqe5t	895176306	traviss	Travis	Smith	Pi Kappa Phi		t	t	f	{"Polar Bear Plunge"}
7xrnldu63dq59jsxxiy4	261224991	bmarvin	Braden	Marvin	Pi Kappa Phi		t	t	f	{Volleyball,Broomball}
98fj3leae3o5e6exjeew	181043863	mmehmen	Mackenzie	Mehmen	Sigma Kappa		f	t	f	{"Polar Bear Plunge"}
j34q3gko86kj0yokiu8z	643754111	ajgould	Austin	Gould	Pi Kappa Phi		f	t	f	{Broomball}
751izsv1jc5ik129adbm	117075058	bkmeeder	Benjamin	Meeder	Sigma Chi		f	t	f	{"Educational Speaker"}
9x4h4t7dtmzgmle6qqn2	37619582	anthonye	Anthony	Engstrom	Sigma Chi		f	t	f	{}
g3iku000hmtofdezr9fq	923189299	lkfritz	Logan	Fritz	Sigma Chi		f	t	f	{"Educational Speaker","Lip Sync"}
wp1l8qosjgexlkncpfdh	227981782	lmoews	Lucas	Moews	Sigma Chi		f	t	f	{Volleyball,"Educational Speaker"}
2o8g8md86854rgrej2wq	740672957	aarons1	Aaron	Schleisman	Sigma Chi		f	t	f	{"Lip Sync"}
wu4z3kgge27z4aj36wmo	207198012	bjw	Benjamin	Wilson	Sigma Chi		f	t	f	{"Educational Speaker"}
pznpefbqbyfudgnn033r	955834904	cdwegner	Colton	Wegner	Pi Kappa Alpha		f	t	f	{}
tv3lb05s4b9yd0tjipyp	657851218	hyan	Hanson	Yan	Pi Kappa Alpha		f	t	f	{}
fuko3v5it73ylhwr0plx	44209196	mtopheim	Maxwell	Opheim	Pi Kappa Alpha		f	t	f	{}
m2gi7c4tmqoibmh9pkv6	14606616	leog	Leo	Glueckstein	Pi Kappa Alpha		f	t	f	{}
w2esnn6t3o1asftl8ap2	491704289	troyl	Troy	Lundstedt	Pi Kappa Alpha		f	t	f	{}
lnndgm1bw2ahz2r3fko3	619903356	mccadam	Connor	McCadam	Pi Kappa Alpha		t	t	f	{}
osxz0zh3rhvwurltr5ik	32012999	olivian	Olivia	Nielsen	Sigma Kappa		f	f	f	{"Educational Speaker"}
elo8dosuuyvdgx8aos6i	801389614	lkmcau	Lauren	McAuliff	Sigma Kappa		f	f	f	{"Educational Speaker"}
au1bohk8r2yslkvfv6o0	699505831	sehenry	Sarah	Henry	Sigma Kappa		t	f	f	{"Lip Sync"}
wu7i3sm2xp3r3l9agop6	762716983	ktsharp	Kendall	Sharp	Sigma Kappa		f	f	f	{}
rek0qszq9vg9fnk0y06b	168571403	stecker1	Sydney	Stecker	Sigma Kappa		f	f	f	{}
6ptgp1nt57oe3s157olu	244297053	zumerb	Bailey	Zumer	Sigma Kappa		f	f	f	{}
5ftplhdazlb33rkmkbea	692182491	jax	Jackson	Braatz	Sigma Phi Epsilon		f	f	f	{}
ue21ch5v15xzk6p2m2rf	82701619	csforey	Charles	Forey	Sigma Phi Epsilon		f	f	f	{}
3ro3yc7ahghzgevb2j2u	763960197	smgibson	Spencer	Gibson	Sigma Phi Epsilon		f	f	f	{}
6u3wn2tmnymmvdxdzrgs	970484550	barrong	Barron	Gustafson	Sigma Phi Epsilon		f	f	f	{}
llh1usts72jx1t9g6qgc	62513451	pthenn	Patrick	Hennessey	Sigma Phi Epsilon	Central	f	f	f	{}
j5ectlrfklu2kz8bi6d0	724247556	jthudson	Jonathan	Hudson	Sigma Phi Epsilon		f	f	f	{"Educational Speaker"}
blj4xvvlis0mti9feqg3	234003801	danchap	Daniel	Chapman	Sigma Phi Epsilon		f	f	f	{"Educational Speaker"}
s1ueb9dccb2etc5ge044	991541551	etomek	Emily	Tomek	Sigma Kappa		f	f	f	{"Educational Speaker"}
zt830qv6iztb7iexfl6w	133588486	cbeckler	Caitlyn	Beckler	Sigma Kappa		f	t	f	{"Educational Speaker"}
zwbgidmxp8426oipezqw	582917335	kaylay	Kayla	Youngblood	Sigma Kappa		t	f	f	{}
inpsjct2md66bhjz5egc	666256615	ndgriggs	Nicholas	Griggs	Sigma Phi Epsilon		t	f	f	{}
y1mvhm5kqa4ezzk1ujrh	290392138	ihkane	Isabella	Kane	Sigma Kappa		t	f	f	{"Educational Speaker"}
lj1hpk3wyuk93zkd5u7y	677116597	mrwynsma	Madison	Wynsma	Sigma Kappa		t	f	f	{}
6auyirdcln82agikgrkb	596601030	serenap	Serena	Paulson	Sigma Kappa		t	f	f	{"Educational Speaker","Lip Sync"}
6oykzstsj7q35zyf1h8h	55292237	cjmace	Cassidy	Mace	Sigma Kappa		t	f	f	{"Educational Speaker"}
wghj744ijepgbfjrd1l5	675655981	kcburt	Kelsey	Burt	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
atthgps6x51uflehoska	210815605	ocfinan	Olivia	Finan	Sigma Kappa		f	t	f	{"Polar Bear Plunge"}
m7kmk65yaz5o0sni4om4	87313270	hlikness	Hannah	Likness	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
4xnnots3yokhm9ejjfvv	291418155	cmoorman	Connor	Moorman	Sigma Chi		f	t	f	{"Polar Bear Plunge",Broomball}
kisvr94s1gslyqh2rfoo	842294477	emmau	Ellen	Mau	Sigma Kappa		f	t	f	{"Polar Bear Plunge"}
9yh0b95hlhx5jj94nk9i	286807541	apopiel	Alexa	Popiel	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ikluyfan7dl8uuh4xltj	926508607	ajmauer	Ally	Mauer	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
wf5pqipl21676l8mse6f	538555045	rachelk	Rachel	Kelley	Sigma Kappa		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
v272zejw15m8c99nzbmh	129663534	ptking	Patrick	King	Sigma Phi Epsilon		f	t	f	{"Polar Bear Plunge"}
sxf2qhyazjfsj9cu18iv	554322769	scramond	Stephen	Cramond	Sigma Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
5xuavbumlvxtw9x61y37	282621411	rsnayar	Rohan	Nayar	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
1abq0chr8jyadf50t4qc	184701541	tjhursh	Travis	Hursh	Pi Kappa Phi		f	t	f	{Basketball,"Polar Bear Plunge"}
b0llvu8r9og95fnzgw9l	853119288	ncreed	Nicholas	Reed	Sigma Chi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
vuxsvp4zwattc1urjwvr	149071994	qmsalas	Quinn	Salas	Sigma Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
gz58eejf9dwbq7o08k5j	994383390	bkeck	Brian	Keck	Sigma Chi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
bbmvajmxn6qyreo7m5t8	142733591	heiny	Ryan	Heinrichs	Sigma Chi		f	t	f	{"Lip Sync","Polar Bear Plunge"}
m0nvfbrsk68nmnj1a7wu	926719794	ajmaher	Austin	Maher	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
znp7v61jau7d05mnhj9b	87197135	weberj	Jacob	Weber	Pi Kappa Alpha		f	t	f	{"Polar Bear Plunge"}
btvei7qtlhfj0gie6do4	828371544	klvesely	Kaleigh	Vesely	Sigma Kappa		t	t	f	{"Polar Bear Plunge"}
250s2nckcnwuf8zlhidu	46811790	nmmouser	Nicole	Mouser	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
33vlrlafu3bqagrqboy1	131673542	mmccaleb	Meghan	McCaleb	Sigma Kappa		t	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
w30m1m3wv2am00yo1qak	490888414	andrea97	Andrea	Schultz	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
dw6w4a9m2cv8t37xa1ra	158489331	rcarter	Robert	Carter	Sigma Phi Epsilon		f	t	f	{"Educational Speaker"}
yc08egopw99w2dmmx1hh	99512413	ebkong	Bo-Hsin	Kong	Sigma Kappa		f	t	f	{}
3y2ntd2k43rr7tgc73er	664030367	abbeymw	Abigail	Williams	Sigma Kappa		f	t	f	{}
dn8qmin2kwxozzktliuo	954538606	vrb	Victoria	Bernhagen	Sigma Kappa		f	t	f	{}
c1rf2l7141k4tu1dkqb9	256951695	kashaver	Kailey	Shaver	Sigma Kappa		f	t	f	{}
jajfxmg98n52l2vads0d	544024498	arcorman	Anna	Corman	Sigma Kappa		f	t	f	{}
6ilomr6r9e7ajnwbr5xb	67756689	arysdam	Angel	Rysdam	Sigma Kappa		f	t	f	{"Educational Speaker"}
kgen1wsw1tyfl8zmz751	84366282	elbesso	Ellie	Besso	Sigma Kappa		f	t	f	{"Educational Speaker"}
neqaqlu3gt0e5xujcrih	514670184	bastever	Brooke	Stever	Sigma Kappa		t	t	f	{}
xhlstjyoy8nu600s6n6r	638397760	sealsb	Brandon	Seals	Pi Kappa Alpha		f	t	f	{"Educational Speaker"}
ytbpx1katdr204vic0as	490352904	jschaff1	Jordan	Schaffer	Pi Kappa Alpha		f	t	f	{}
aw959fz7xu55bszyae04	952123212	jakesoul	Jake	Soulinthavong	Pi Kappa Alpha		f	t	f	{}
nvz4q9xhwuy0022ojmm5	379693314	rzaleski	Rebecca	Zaleski	Sigma Kappa		f	f	f	{"Educational Speaker"}
thmqn9x57ab86a9p1ujs	621206586	swallace	Sydney	Wallace	Sigma Kappa		f	f	f	{"Educational Speaker"}
uj3hygx8zohxe9f4jnr9	610197613	absuglia	Alexandrina	Suglia	Sigma Kappa		f	f	f	{"Educational Speaker"}
5wpk1v5lg3tkpqwqalt7	214146958	jkolker	Joshua	Kolker	Sigma Phi Epsilon		f	f	f	{}
qzg561vi38ximudwzo7d	491163690	kmcmurra	Kevin	McMurray	Sigma Phi Epsilon		f	f	f	{}
56nkq0pla0eq0gvl15ia	733047315	amwhye	Alex	Whye	Sigma Phi Epsilon		f	f	f	{}
amjjh68zno8otvcd567e	922506606	bbuchh5	Brady	Buchheit	Sigma Pi		f	f	f	{}
it3f30v4cko57e0i5rf8	948733786	bmday	Brian	Day	Sigma Pi		f	f	f	{}
zby4u0bcs2id56avws4t	657066410	rwheck	Robert	Heck	Sigma Pi		f	f	f	{}
nzimuybrbz7775lfbdq8	943456538	nhpeters	Nicholas	Peters	Sigma Phi Epsilon		t	f	f	{"Lip Sync","Educational Speaker"}
01dsfnj0c6asgj2s9iv6	232455223	berhenke	Mason	Berhenke	Sigma Pi		f	f	f	{"Educational Speaker"}
p3qk7d7v8jyyga5nwlvl	620552100	lgumble	Luke	Umble	Sigma Pi		f	f	f	{}
bt92jbtt7dt6edlit3r2	254577323	crabrams	Colby	Abrams	Tau Kappa Epsilon		f	f	f	{}
y9f0hlilwhv3m8xcyk4j	265574405	bbye	Benjamin	Bye	Tau Kappa Epsilon	Crew	f	f	f	{}
n3j26wkffp0q9raao3p0	162644482	ajdavis	Adam	Davis	Tau Kappa Epsilon		f	f	f	{}
6q6gtzg40m677rzpff4q	754958232	jglenn	Jonah	Glenn	Sigma Pi		t	f	f	{}
hlq5f2xe4wpw2simtrrm	138281171	sglewis	Sarah	Lewis	Sigma Kappa		t	t	f	{"Educational Speaker"}
ssmb34vnxrdccr2kuwy8	842813972	herrm	Cory	Herrmann	Sigma Pi		t	f	f	{}
n4lyu2hbqy7sew2hh7wj	358600314	kmmoore	Kenadi	Moore	Sigma Kappa		t	f	f	{"Educational Speaker"}
3bmjgtm93xzrm8p17ng4	869792948	kalyxh	Kalyx	Heuermann	Sigma Kappa		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
f6bolua4tibguwbp68v6	596136565	alwin	Aurianna	Lwin	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
gm2pynyil2qz2d0nef7i	869729885	jtagye	Julia	Tagye	Sigma Kappa		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
474ma4g9y2zl6z1rei14	915811897	vmd	Vincent	DiVincenzo	Sigma Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
l6sidlao6fjew2ogklaa	454906452	dcross	Daniel	Cross	Sigma Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
k5ua467nlpq4rjyltsls	153686557	mrhynes	Meaghan	Hynes	Sigma Kappa		t	t	f	{"Polar Bear Plunge"}
7u225swm6o5bkm3e8vd6	412673285	sydneyp1	Sydney	Peterson	Sigma Kappa		f	t	f	{"Polar Bear Plunge"}
qdscvwdltea3xgj2f5n1	936506571	mpatkins	Megan	Atkins	Sigma Kappa		t	t	f	{"Lip Sync","Polar Bear Plunge"}
7k9hpvda16uxm9oqjwas	310997687	mkboland	Mikayla	Boland	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
1ops77kgrjyqiitm4pf0	90531441	tbrodeur	Tyler	Brodeur	Sigma Phi Epsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
nh48b66yqytui5ejz5r9	382884518	hmburt	Hayley	Burt	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
7zdacczedwho3sufbbxd	13679690	kyand	Kyle	Anderson	Sigma Phi Epsilon		t	t	f	{"Polar Bear Plunge"}
vxipqtr2ee1ary5pjeti	232703471	mgabbard	Matthew	Gabbard	Sigma Phi Epsilon		f	t	f	{Treds,Broomball}
hgk37fft2d60657an229	426563162	jjmorton	John	Morton	Sigma Phi Epsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
yx4b4qouu1an8tmaef2d	749396669	zbaudler	Zachary	Baudler	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
nued2xyk3rk0x0jbtn2b	378564186	npconn	Neal	Conn	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
bwzi7isjfypvg6e9rjpq	393547154	jawalsh	Jenny	Walsh	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
j72306z7k70yc5fthhw0	180904749	jtkaufer	Justin	Kaufer	Sigma Chi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
t7ahqx7w9fw4ccmn5pcp	638285648	crkocek	Connor	Kocek	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Polar Bear Plunge"}
vieystf74nzvzrw9ez7r	857490634	jbebel	John	Bebel	Sigma Phi Epsilon		f	t	f	{"Polar Bear Plunge"}
l6ah3gupgw4cuxc5c0m9	275312037	neil11	Neil	Patel	Sigma Phi Epsilon		f	t	f	{"Polar Bear Plunge"}
r4knxyat2ekqgt9ztk4g	629135507	wolcottk	Kyle	Wolcott	Sigma Phi Epsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
p6ux4axn0amizifjrkyx	99820721	sjmccabe	Steven	McCabe	Sigma Phi Epsilon		f	t	f	{"Polar Bear Plunge"}
ux5mhkowtg3wm0hr8a47	591513923	tbunting	Tyler	Bunting	Sigma Pi		f	t	f	{"Polar Bear Plunge"}
xospz6n8ugosuiu0mjn8	202072871	chasew	Chase	Wallace	Sigma Phi Epsilon		f	t	f	{}
tvh7rwiqqqqftoawiv2b	895632738	gstanton	Grant	Stanton	Sigma Phi Epsilon		f	t	f	{}
7oq51wh5krnu97pw0r33	354204951	chertzer	Collin	Hertzer	Sigma Phi Epsilon		f	t	f	{}
pd9391t3mdk8v3ds769j	421906485	nmkress	Nicole	Kress	Sigma Kappa		f	t	f	{"Educational Speaker"}
khctes98cwz0hrlnfglx	827529703	mamuller	Madison	Muller	Sigma Kappa		f	t	f	{"Educational Speaker"}
7kk2alekh7ixq4xm517c	198145948	padebont	Paige	Debont	Sigma Kappa		f	t	f	{"Educational Speaker"}
w6qbh1vsblxdjd34nkf8	952486567	asb	Audrey	Blankenship	Sigma Kappa		f	t	f	{"Educational Speaker"}
8mdkpqa7sa56fk69ov06	14688674	cagust	Chantel	Gust	Sigma Kappa		t	t	f	{"Lip Sync"}
ytxaqnwauq8qvypj0j7p	928835984	bmenning	Brenna	Menning	Kappa Alpha Theta		f	t	f	{}
2tq3keem7u3gk269ts9g	793610818	zwcramer	Zachary	Cramer	Pi Kappa Alpha		t	t	f	{"Lip Sync"}
totjgkc0ihee4l95v98r	837276464	endecott	Luke	Endecott	Tau Kappa Epsilon	Crew	f	f	f	{}
8qth4yqfyfwwdrbhyesd	190452297	mvedrine	Michael	Vedrine	Delta Sigma Phi		t	t	f	{}
1gitdu95p7ub8cm4gk8m	318692409	jmbenson	Jack	Benson	Tau Kappa Epsilon		f	f	f	{"Educational Speaker"}
9mt200iyk7la4t493se2	168075941	dwgasper	David	Gasper	Tau Kappa Epsilon		f	f	f	{}
28o98b2c1lga06w9cnm5	754928202	aiivers	Adam	Ivers	Tau Kappa Epsilon		f	f	f	{}
nn8u5rb3stdll3bc65gi	378120743	reedlech	Reed	Lechner	Tau Kappa Epsilon		f	f	f	{}
i5bxi740mcx4ax6b5faj	75613707	imcnamee	Isaiah	McNamee	Tau Kappa Epsilon		f	f	f	{}
pqazuw09l3hq66qw05wg	144950806	tscallon	Thomas	Scallon	Tau Kappa Epsilon	Central	f	f	f	{}
ulmqnwp4h7b25o8xprcc	797673905	mmonte	Michael	Montemurro	Sigma Pi		t	f	f	{"Educational Speaker","Lip Sync"}
da4s0f2uk41ynsbz1pk5	575374825	jdmentze	Joshua	Mentzer	Sigma Pi		t	f	f	{}
s4r31o8cqvxgmc95uywm	916270386	drake4	Drake	Schaphorst	Sigma Phi Epsilon		t	f	f	{"Educational Speaker"}
f6pgsw8eneo1lenzvkkc	862916054	lar	Lucas	Ruedenberg	Sigma Pi		t	f	f	{"Educational Speaker","Lip Sync"}
b77306o2pat58lx06zjd	860444585	mckeague	Timothy	McKeague	Sigma Phi Epsilon		f	t	f	{Basketball}
hwqusxun6jaxg6t0ivhi	620156601	mislivec	Connor	Mislivec	Sigma Phi Epsilon		t	f	f	{}
ls0t116ma39veg0erpa6	222875673	tomkelly	Thomas	Kelly	Sigma Phi Epsilon		f	t	f	{}
v0qecomfzz51v1nj6nwb	522868382	swartzoe	Zoe	Swartz	Sigma Kappa		t	f	f	{"Educational Speaker"}
ctadvfh8wljlbsbkzefg	117969852	rstokka	Robert	Stokka	Sigma Phi Epsilon		t	f	f	{"Educational Speaker"}
ll0gvy34gmaf2tyjfckt	427473075	kara	Kara	Masteller	Sigma Kappa		t	t	f	{"Lip Sync"}
trbnesxgku0wdox6i5cy	69186117	imwilmot	Isaac	Wilmot	Sigma Phi Epsilon		t	t	f	{Treds}
wd7mrqkc18sgcbknqrv4	606528923	lauren23	Lauren	Wilcox	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync"}
eo47o0y17wvn7lzwe84r	964110171	marcotte	John	Marcotte	Sigma Phi Epsilon		t	t	f	{"Educational Speaker"}
4mmzhsuq0cxb28tr9pnt	231190995	bkdarr	Bethany	Darr	Pi Beta Phi	Crew	t	t	f	{}
rel91n1ccjhd65dufa1f	850196347	atangen	Alexander	Tangen	Sigma Phi Epsilon		f	t	f	{Treds}
4jt6x0qvyy3ror9mxwew	96406310	dfristau	David	Ristau	Sigma Pi		f	t	f	{}
1yy5lr4oxkgj4uwc5slw	794800079	jdeckley	Joshua	Eckley	Sigma Pi		t	f	f	{}
edj3kotxrl39woi7kth7	744395652	makaylep	Ma'Kayle	Phillips	Sigma Pi		t	f	f	{}
gvruieqd0cbmtcjhqlaq	100380280	robbev	Robbe	Verhofste	Sigma Pi		t	f	f	{"Lip Sync"}
y8db498h335ufsvncnds	684136610	jackryan	Jack	Fischer	Tau Kappa Epsilon		t	f	f	{}
h0kocvxldlfxoi8je4qy	683563905	mmarceau	Michaela	Marceau	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
dtszijk012bc2n1op7ph	191518351	dhynds	Dylan	Hynds	Sigma Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
m798xkzw7q9hphmqciz4	721622902	chornsby	Callin	Hornsby	Sigma Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
s7omyk62u2tsky6lgpy1	323982686	lwabel	Leah	Wabel	Sigma Kappa		f	t	f	{Dodgeball,"Polar Bear Plunge"}
s8y1jhgn73x4l4mq3vzb	257575318	plarkin	Pierce	Larkin	Sigma Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
qwk6gvu1s3t0qlesapx6	237266029	eeo	Erik	Olson	Sigma Phi Epsilon		f	t	f	{"Polar Bear Plunge"}
ekv4w79iaes47fo8deb3	287895631	emerkle	Emily	Merkle	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
j3ban0ejp96x6sh79a2e	741171431	apetro	Alexander	Petroulakis	Sigma Pi		f	t	f	{"Polar Bear Plunge"}
4fczruonnaketi6wd3ay	519322831	camdenc	Camden	Chicchelly	Tau Kappa Epsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
7z81t64t07udzm3vd33m	449358910	amabbate	Anthony	Abbate	Sigma Phi Epsilon		t	t	f	{"Educational Speaker","Trivia Blast","Polar Bear Plunge"}
qc0fmhseuw2hs96wgpst	326493167	akouri	Andersen	Kouri	Sigma Phi Epsilon		f	t	f	{"Polar Bear Plunge"}
y7fddgp8t4uf0ifzqow9	195533338	ejwendel	Elliot	Wendel	Sigma Phi Epsilon		f	t	f	{"Polar Bear Plunge"}
a0scot61xmvlmjmtpchj	967919981	rbask	Ryan	Baskfield	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Polar Bear Plunge"}
yizrdrsoyz37li84twtx	459921462	zdbrown	Zachary	Brown	Sigma Phi Epsilon		t	t	f	{"Polar Bear Plunge"}
iwz99lm4495ao14v0rfg	812541730	tarinp	Tarin	Phillips	Sigma Phi Epsilon		f	t	f	{"Polar Bear Plunge"}
9muoda05gz3c0ootdg7q	219577425	hkenney	Halley	Kenney	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ptwx1usxnqbd1r8d2wy8	297971674	jkdean	Jacob	Dean	Tau Kappa Epsilon		f	t	f	{"Polar Bear Plunge"}
fiylj38wxxxlkd4wcfg7	667503857	lmpater	Luke	Pater	Sigma Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
y6xfszpsiycio12cvcys	98848750	ncorbett	Nicolas	Corbett	Tau Kappa Epsilon		t	f	f	{}
0r7n0tbhgh5qir8922fi	968018079	mccoy	Daniel	McCoy	Sigma Pi		t	f	f	{}
f6d00x4que4ceeg4y8qo	316759508	rmporch	Ryan	Porch	Sigma Phi Epsilon		t	t	f	{}
qgq1qp5jij6cbg7xjymv	194664550	bradenp	Braden	Pederson	Sigma Pi		f	t	f	{"Lip Sync"}
oeeinlrk7tnq78805b9v	695280610	mhf	Matthew	Fontillas	Sigma Pi		t	t	f	{"Educational Speaker"}
39id4vg2vzrtwmc239bv	46091045	zpdwyer	Zachary	Dwyer	Sigma Pi		f	t	f	{"Educational Speaker"}
8s3bes80h6mtlzj16ugx	510284803	tfred11	Trenton	Frederickson	Pi Kappa Alpha		t	t	f	{"Lip Sync"}
0h4okrm9le84dfddhkti	379099749	kronfeld	Matthew	Kronfeld	Sigma Pi		f	t	f	{"Educational Speaker"}
o7h2a1n69uswt93zil63	660808148	lawinter	Lauren	Winter	Sigma Kappa		f	t	f	{}
l2hjrf8bsu04b2evwp0x	202572370	whsmith	William	Smith	Tau Kappa Epsilon	Crew	f	f	f	{}
26m98wc3mi5u3g55r1tb	289962673	stevenv	Steven	Valentino	Tau Kappa Epsilon		f	f	f	{}
xct0e2d6mvg5jk6zbbsg	910905996	pscook	Phillip	Cook	Theta Chi		f	f	f	{}
dp12u3jg8qo8nkemsyak	678089412	nrcrooks	Neal	Crooks	Theta Chi		f	f	f	{}
gzdd4lw3dlrmu9h35oki	177559430	agolberg	Austin	Golberg	Theta Chi		f	f	f	{}
thuj5nhck56skyrjkbzt	304432152	andrelar	Andre	LaRenzie	Tau Kappa Epsilon		f	f	f	{"Educational Speaker"}
2ww862casmox6e57uf3s	624509886	mlkraft	Mason	Kraft	Tau Kappa Epsilon		f	f	f	{"Educational Speaker"}
g5d0lnu9wsagi16qqprr	289562305	pslunn	Phillip	Lunn	Tau Kappa Epsilon		f	f	f	{"Educational Speaker"}
isjswr027p1l1dm78264	637685072	nacheney	Nathan	Cheney	Theta Chi		f	f	f	{"Educational Speaker"}
rj2n7vte0fqe1475lfuv	947195249	bgoodma	Brennan	Goodman	Theta Chi		f	f	f	{}
yu0jcppymsevaj708asu	672759111	nshall	Nathaniel	Hall	Theta Chi		f	f	f	{}
xhb6cehcnlokz8tosoy9	510343850	zhartzog	Zackery	Hartzog	Theta Chi		f	f	f	{}
8k2q8u4ddcls877949xt	713760047	isaach	Isaac	Holtkamp	Theta Chi		f	f	f	{}
8s9julozvtul99qh0nwy	328326999	pkmann	Paul	Kaufmann	Theta Chi		f	f	f	{}
h8w7jh0migibi67y765s	117809692	nkent	Nathan	Kent	Theta Chi		f	f	f	{}
szl5lhbxnxnf5bp8hagj	116317201	donaldl	Donald	Laracuente	Theta Chi		f	f	f	{}
j51wwhowki2frzhena9q	367532165	wjmarks	Billy	Marks	Theta Chi		f	f	f	{}
4gmnlp9xznqah3s3h6zj	854682857	ntparker	Noah	Parker	Theta Chi		f	f	f	{}
7lildwyjeim58s2gh24j	768134367	jondp	Jonathan	Peters	Theta Chi		f	f	f	{}
xbl6yypvmjwruwnbbcdu	293919626	dtreed	Dustin	Reed	Theta Chi		f	f	f	{}
p95tlbsbf9x6tsa2lvpn	592948395	wschmeda	William	Schmeda	Theta Chi		f	f	f	{}
rih29anze45y2pi78uy8	265408143	cpudenz	Cole	Pudenz	Tau Kappa Epsilon		t	t	f	{}
20k2rzo0lmhe2ms168eb	277044768	jph1	John	Hnastchenko	Sigma Phi Epsilon		f	t	f	{"Educational Speaker",Treds}
w00rhn1kipt69tr0fbgn	773253481	bjlando	Brandon	Landowski	Tau Kappa Epsilon		t	t	f	{}
e9ccll8h9u2vp47vydkw	121182061	jwlegge	James	Legge	Tau Kappa Epsilon		f	t	f	{}
8qsjz60i3x3ap8e6s2te	465541100	txbui	Tho	Bui	Theta Chi		t	f	f	{"Lip Sync"}
5iqkwitz62u8fe6ig91h	789351583	igibbons	Issac	Gibbons	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync",Treds}
l48m0x3j34ul58uxfjsa	921713818	lbormann	Leo	Bormann	Tau Kappa Epsilon		t	f	f	{"Lip Sync"}
boy7wh56yudai7w9d49y	493988523	bbadasso	Bareento	Badasso	Pi Kappa Alpha		f	t	f	{}
bm6ha2224d47e1ey5o7x	742417700	rlp	Robert	Petersohn	Sigma Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
upi9k7cltx6wxrhgq381	281686445	wilsonp	Wilson	Pietruszewski	Sigma Pi		f	t	f	{"Lip Sync","Polar Bear Plunge"}
6bhclc9bab71a3yyme51	92570478	jamesm	James	Muschenheim	Sigma Pi		f	t	f	{"Polar Bear Plunge"}
f1cmtmeb6lp8drvbdlpx	425681256	emiller1	Evan	Miller	Sigma Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
76v60za7kb4ymd3z215q	121172051	ncmeyers	Nicholas	Meyers	Tau Kappa Epsilon		t	t	f	{"Polar Bear Plunge"}
qd2j6a54dwyqa2c2w2cj	218469251	etrannel	Erin	Trannel	Sigma Kappa		t	t	f	{"Polar Bear Plunge"}
ty8nsybihe2fy1140drw	645473829	ksknirr	Kevin	Knirr	Sigma Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
7nnydp6dl3pyl2zzdq72	897341468	vnambury	Vasudev	Nambury	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
pkq1avuc54f16z91l9uj	60993954	llenhart	Luke	Lenhart	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
sqsisxbkbruksqpra4zl	397627266	jrarble	James	Arble	Tau Kappa Epsilon		t	t	f	{"Polar Bear Plunge"}
vr1py10yrmn9vnhac38z	136487379	nmv44	Nolan	Vollstedt	Tau Kappa Epsilon		t	t	f	{"Polar Bear Plunge"}
35jk8yr7ben6s2zxnxzb	137487350	cbraike	Charles	Raike	Tau Kappa Epsilon		f	t	f	{"Educational Speaker","Trivia Blast",Broomball}
09rqxiu0r7aigo91so2u	880806951	krehbiel	Kip	Krehbiel	Tau Kappa Epsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
bljqgcwdrlftw7okh289	843942099	benm	Ben	Morrison	Tau Kappa Epsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
mx463jn0p7gpb635xvdw	635225615	aflores	Andre	Flores	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
e07cfb1u4nq042xdrrq3	263642379	Jbbliss	Jacob	Bliss	Tau Kappa Epsilon		t	t	f	{"Polar Bear Plunge"}
iav1f5y0fp7t63w37f9t	334438161	Thomasf1	Thomas	Fredericks	Theta Chi		f	t	f	{Broomball}
pe5o8n98f5nwesbsh1o3	163662523	kaylars	Kayley	Larson	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
qgulhu95inexi2umyv1f	358761427	spthomas	Sean	Thomas	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ght6zdvh6mndrj2xkd5p	623589967	austin56	Austin	Schmidt	Tau Kappa Epsilon		t	t	f	{"Educational Speaker",Treds}
c4u40zsbq6adbxeui9v5	129497368	maxj24	Maxwell	Jones	Tau Kappa Epsilon		t	f	f	{}
xilz8nqe26y8dgvoezkx	209411226	bw1814	Benjamin	Williams	Tau Kappa Epsilon		t	f	f	{"Educational Speaker"}
ml2etzfq7c0txlcejhsh	631072442	bdavis	Blake	Davis	Tau Kappa Epsilon		t	f	f	{"Educational Speaker"}
rdlzmdlycxqr089sm9ed	876767892	nicolase	Nicolas	Espinosa	Sigma Pi		f	t	f	{Treds}
hdzsxk54eb87nvxo7h2s	303082780	lceppard	Lincoln	Eppard	Tau Kappa Epsilon		f	t	f	{}
hrkyzqqgkot1wpq36yeg	426684258	jmaubach	John	Maubach	Tau Kappa Epsilon		f	t	f	{"Educational Speaker","Lip Sync"}
u4g1ki35u8ftab1610v5	391843452	ncdugan	Nick	Dugan	Tau Kappa Epsilon		t	t	f	{"Educational Speaker"}
c563uyd2x5a7yz3n78s7	45351341	hanesiii	Frank	Hanes	Tau Kappa Epsilon		f	t	f	{Volleyball}
uye3engujy8ityalv0ml	453481028	jagermic	Michael	Jagerson	Tau Kappa Epsilon		f	t	f	{Basketball}
jzidn6q16f2kfludeh27	930183275	bensindt	Benjamin	Sindt	Theta Chi		f	f	f	{}
r0ryuko8b0ble4qwclc8	188666478	jastuart	John	Stuart	Theta Chi		f	f	f	{}
58uscgx8ds6lhjlm1t1s	32030073	tthomas	Tyler	Thomas	Theta Chi		f	f	f	{}
vqben95qtg4xu11flok3	927726824	xmtruong	Xuan	Truong	Theta Chi		f	f	f	{}
xef4dyixd6by3on5n30f	74770696	jakew	Jacob	Wiemiller	Theta Chi		f	f	f	{}
09k50v3al9t5qy78p4gc	753136400	jtchung	Jason	Chung	Theta Chi		f	t	f	{"Karaoke 1st Cuts"}
x1qi7qzozx0rgovxhnrr	178973851	iblanari	Ion	Blanari	Theta Delta Chi		f	f	f	{}
p5mx5frotifaku23g42p	647098452	jhblust	John	Blust	Theta Delta Chi		f	f	f	{}
gcix3q3yoptbundfakxo	417859442	carolan	Alexander	Carolan	Theta Delta Chi		f	f	f	{}
abllkjil941ma01kyzhw	375986611	dancoll8	Daniel	Collins	Theta Delta Chi		f	f	f	{}
85ww3xv7pm03753mm4fv	725369645	qrjamrok	Quinn	Jamrok	Theta Delta Chi		f	f	f	{}
h46o6l2cg7w1e7h0dvb6	867987120	cgkiddoo	Cade	Kiddoo	Theta Delta Chi		f	f	f	{}
48sf25yozehpnsk0s5s0	365941576	presto35	Alexander	Preston	Theta Delta Chi		f	f	f	{}
kg0ticjr2ycxu0jg4j5j	619735208	wisowaty	Brian	Wisowaty	Theta Delta Chi		f	f	f	{}
wak32w63m6twwt60r1r5	982162181	abrown7	Adam	Brown	Triangle		f	f	f	{}
9uuyeeqgf32k8rfrpg27	951906979	crosheim	Cooper	Rosheim	Theta Chi		f	f	f	{"Educational Speaker"}
ue2h907rld23yn3hh7mg	700775102	mm23	Matthew	Maschmann	Triangle		f	f	f	{"Educational Speaker"}
infzchkfcclwhuxh8t93	44109065	markmh	Mark	Humphreys	Triangle		f	f	f	{"Educational Speaker"}
0taopxwek9zy4f0jvmjz	808293486	rdsylve	Robert	Sylvester	Tau Kappa Epsilon		f	t	f	{Volleyball,Treds}
7j0zpwqq08z7ue8tg4b0	619149551	ssleder	Steven	Sleder	Triangle		f	f	f	{}
l7nrew0qczsgelsqissg	788466708	dschertz	Daniel	Schertz	Sigma Phi Epsilon	Central	f	t	f	{Dodgeball}
dubnn1zqw2mjoslw5ijx	334932630	randa251	Jack	Randall	Theta Chi		f	t	f	{Basketball}
3h5x41eh121qgvylwc1y	816171393	daadam	Dalton	Adams	ACACIA		f	t	f	{Dodgeball}
hod1cwdvn0hn1v3exvnh	665037373	gracej	Grace	Jedlicka	Chi Omega		f	t	f	{Dodgeball}
knyolmif9tu57b0t6irz	249883658	jahrens	Jonathan	Ahrens	ACACIA		f	t	f	{Dodgeball,"Educational Speaker"}
f7mkyrtitb3zaa0j3mr7	135485350	tjb	Tyler	Bennett	Triangle		f	t	f	{Dodgeball,"Educational Speaker"}
gclim0l2rv32muk8zv1e	48886838	ammalec	Alissa	Malec	Pi Beta Phi		t	f	f	{}
ocosszpxqqjbahvfmtmz	817532744	ldvorak	Lori	Dvorak	Kappa Delta		t	f	f	{}
vi3msf9uxhewo4lpoaab	434233826	afdodds	Alec	Dodds	Theta Delta Chi		t	f	f	{}
unjt4rwjssyp5zwliwmr	829242414	tadj	Tad	Johnson	Tau Kappa Epsilon		f	t	f	{"Educational Speaker","Lip Sync"}
skr2kpp5uebj9l9fn9dg	86279217	jlshea	John	Shea	Theta Chi		f	t	f	{}
l8sxle52xqwm6go6dx41	851048198	hellmich	Gavin	Hellmich	Tau Kappa Epsilon		f	t	f	{"Educational Speaker"}
cfo30n9rmqs3m4qhqcdo	766580815	akb	Aaron	Broennimann	Theta Chi		t	f	f	{"Lip Sync"}
5zoighhf5wxsyikbvs9s	416809393	sturtzer	Abigail	Sturtzer	Pi Beta Phi		t	f	f	{}
0e5dwmcxgqnya296v1py	863863029	noahjj	Noah	Jackson	Tau Kappa Epsilon		f	t	f	{"Educational Speaker",Treds}
u31mbh8a8qn0jdct6ptg	750733984	rhorak	Ryan	Horak	Tau Kappa Epsilon		t	t	f	{}
joc6js7qh3y72k06lvdy	145938793	cthomas	Christopher	Thomas	Sigma Pi		f	t	f	{"Educational Speaker",Broomball}
goikryvxaqwzrk3empwo	108458374	rthach21	Romon	Thach	Tau Kappa Epsilon		t	t	f	{"Lip Sync","Polar Bear Plunge"}
059i12siwpiqx1eghhr0	609475887	jrmoret	Jacob	Moret	Theta Delta Chi		t	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
vjdqagnzngq506vs1nnj	742055342	quinnett	Ryan	Quinnett	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
aur9xwidwez35cpsv9z0	272077806	colt18	Colton	Gray	Sigma Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
ftl6c34pntjhd2ia8yx0	432690286	ngratias	Noah	Gratias	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
i5nh48hgrbrelc1ynpe4	959374452	mkclark	Michael	Clark	Theta Delta Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
c8ggktbxw7am1jnh29u2	665865200	jshoemak	Jacob	Shoemaker	Tau Kappa Epsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
fhyosvkunzq85t7guxm6	51263212	samsona	Alex	Samson	Tau Kappa Epsilon		t	t	f	{Broomball}
o1nble2z3v2cjt8r5gfg	213662477	naleskun	Nicole	Leskun	Pi Beta Phi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
t5cc9yelfyuroy43fpx1	767150384	jpmass	Jonathon	Mass	Sigma Pi		t	t	f	{"Lip Sync","Polar Bear Plunge",Broomball}
sg5zfj5r08vsqtj96pen	361255895	trelmitt	Trevor	Elmitt	Tau Kappa Epsilon		f	t	f	{"Educational Speaker"}
ort0n9xdcs0mtld6cpln	976861886	mda	Matthew	Anderson	Theta Chi		f	t	f	{}
2h2hv11eko1pjopgcy9s	134856750	khedrick	Keagan	Hedrick	Theta Chi		f	t	f	{"Educational Speaker"}
cklval7y44b6dfs6vkkj	312249938	breannaa	Breanna	Anderson	Alpha Phi		t	t	f	{}
ckq3khkunajtdyh4usno	510396915	acwong	Alvin	Wong	Theta Chi		f	t	f	{}
wkhw14lfj6m07j2w4t9n	457063607	nlafrenz	Nicholas	Lafrenz	Theta Chi		f	t	f	{"Lip Sync"}
lxv9nol2iuqnrpl9id6y	42227185	bkramer	Bryson	Kramer	Theta Chi		f	t	f	{}
f90po9primoo2wianltp	190473283	bechtold	Richard	Bechtol	Theta Chi		f	t	f	{}
xptaksn3tchbwkeiuo7i	799814015	zstuart	Zachary	Stuart	Theta Chi		f	t	f	{}
v5xpg3irgc9pom7zht12	62227165	jdgagnon	John	Gagnon	Theta Chi		f	t	f	{}
mpcmi24ya70jvs0o23ob	436116681	srgreene	Samuel	Greene	Theta Chi		f	t	f	{}
ur38nwh90ouns1rrwywq	32483484	jgjerger	Joseph	Jerger	Theta Chi		f	t	f	{}
w4bzgwctlszt0ty55srz	732628897	fbeeler	Forrest	Beeler	Theta Delta Chi	Crew	f	t	f	{}
41kcw0vc3u3j3toywuag	352665340	chisjoh	John	Chisholm	Theta Delta Chi		f	t	f	{"Karaoke 1st Cuts","Educational Speaker","Lip Sync","Karaoke 2nd Cuts"}
vzvz4cpu20x2xw4thltu	490278802	tkruegs1	Thomas	Krueger	Sigma Pi		t	f	f	{"Educational Speaker"}
2aim5q5cpri0dyjo6ece	864132294	afossand	Abigail	Fossand	Kappa Kappa Gamma		t	f	f	{"Educational Speaker","Lip Sync"}
qzlx59q0vmtw1ycdats8	847316503	cassidyl	Cassidy	Longnecker	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
yy1knwgn1vho7fafspo3	875638796	lyoder	Laura	Yoder	Alpha Gamma Delta		t	t	f	{Dodgeball,"Educational Speaker",Basketball}
fgp73o7lz8rwfsdf1csf	79340261	marissad	Marissa	Donahue	Phi Beta Chi		t	f	f	{"Lip Sync"}
r6ncqewxjmw3vtbhcsrp	540735195	hannahd	Hannah	Dehaan-Burch	Kappa Delta		t	f	f	{}
2246chhanv2unqii3nf4	119604485	rjhale	Ryan	Hale	Delta Upsilon		f	t	f	{Dodgeball,"Educational Speaker"}
4b3y0s6qxch8lx7ozne1	110052963	tinaglia	James	Tinaglia	Sigma Chi		t	f	f	{}
twqmn4hjtsri7vn3ah1y	107174067	abbypatt	Abigail	Patterson	Pi Beta Phi		t	t	f	{Dodgeball}
budbxw0nox9jess9hz5r	594633067	natalie	Natalie	Pettigrew	Kappa Delta		t	f	f	{"Educational Speaker"}
6fkt5lrpnc3bipccrl3y	78863785	tboell	Tyler	Boell	Triangle		t	f	f	{"Educational Speaker"}
2hnq5do9opbs5xogdtcd	799816017	emw	Emily	Wright	Alpha Delta Pi		f	t	f	{Dodgeball,"Educational Speaker"}
6h1r07uwebibgxvn0vbw	87993906	daguirre	David	Aguirre	Triangle		f	t	f	{"Show Me The Greeks","Educational Speaker"}
zvy8ceudcxwmcmj3xutj	784590807	dahogue	David	Hogue	FarmHouse		t	t	f	{Dodgeball,"Educational Speaker"}
j6szpyrpxu5ati7g39u3	916605718	matthewv	Matthew	Vanderwerf	Theta Chi		t	f	f	{"Lip Sync"}
gol5s9cc2gdwpce70eb3	798534737	pschultz	Pierce	Schultz	Theta Delta Chi		t	f	f	{}
fhielsh9tsxaanywve5t	45642624	cmreed	Chandler	Reed	Sigma Chi		f	t	f	{Dodgeball}
710obgsvb3v3d4ehr4pf	285650365	rsmccc	Riley	McCloskey	Tau Kappa Epsilon	Central	f	t	f	{Dodgeball}
n2911jp37d1cowak2upw	958951994	dheppner	Daniela	Heppner	Delta Zeta	Central	f	t	f	{}
793un8tyucsenapgjoyt	925867943	sramundt	Sarah	Ramundt	Pi Beta Phi	Central	t	t	f	{Dodgeball}
7m8vmwjfr5gedlbt3z5p	707715008	fcauley	Forrest	Cauley	Triangle		f	t	f	{}
rcgyygys21th0oqh7epq	241652411	venegas	Juan	Venegas	Theta Delta Chi		f	t	f	{}
kpoo1g0vqe5z12oornef	997577617	jrguhin	John	Guhin	Theta Delta Chi		f	t	f	{"Educational Speaker"}
0ga9es2rwxexk2wemnbv	285066782	jrburley	Jeremey	Burley	Triangle		f	t	f	{}
7y2ymsl5cvb9rxu5h6rl	938862954	tenellen	Thomas	Nellen	Alpha Tau Omega		f	t	f	{Dodgeball}
x8uqnksdb6sv3jq5xexy	847335489	rmcsween	Ryan	McSweeney	Triangle		f	t	f	{"Educational Speaker"}
e484dlsl2w4i31q3gruo	59811884	gpearson	Griffin	Pearson	Theta Delta Chi		f	t	f	{}
59yvli4nptlz749a4lzq	81774693	benhok	Benjamin	Hokanson	Theta Chi		f	t	f	{"Lip Sync"}
mrp7awhrtxe74h7ylxvn	561269733	cashland	Clark	Ashland	Theta Chi		f	t	f	{"Lip Sync"}
hp2v9uefycizphzpadjl	608605021	mjschatz	Mitchell	Schatz	Sigma Phi Epsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
10ecugwcurzieevvacnm	493328860	grotea	Alexander	Grote	Theta Delta Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
tpsw232qxdazpaqnr5qi	455608221	tbombeck	Thomas	Bombeck	Theta Delta Chi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
c3d8wz8ldkr1ond0uta5	96583562	Anorman	Andrew	Norman	Phi Gamma Delta		f	t	f	{Dodgeball,"Educational Speaker","Polar Bear Plunge"}
w0buq2x8je48k1b5f93x	385849484	sezachar	Sydney	Zachar	Delta Delta Delta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
6ifhwebh2edp2hkmux2z	875070196	tjfenton	Tyler	Fenton	Triangle		t	t	f	{"Polar Bear Plunge"}
5o7zdp2xop7505am0a4s	829671887	morgann	Morgan	Naughton	Delta Zeta		t	t	f	{"Polar Bear Plunge"}
k7mpoqm4v9vy64apr3ya	289649212	edley	Ethan	Ley	Theta Chi		t	t	f	{Dodgeball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ukwll61bp7meaq38hg6x	987440454	nsreddig	Noah	Reddig	Theta Chi		f	t	f	{"Polar Bear Plunge"}
836oj37ilc2naeznzul1	642763121	lukel	Luke	Locascio	Pi Kappa Phi		t	t	f	{Dodgeball,"Educational Speaker",Treds,Broomball}
lhxe81ci8j84eek981sd	397600203	ihaughey	Ian	Haughey	Tau Kappa Epsilon		f	t	f	{Broomball}
gelbsww87r3417v78zyc	354188835	paradise	Sebastian	Paradise	Theta Chi		f	t	f	{Broomball}
6wblvuxz2hgbn64b8v43	17404456	carenaa	Carena	Anderson	Alpha Omicron Pi		t	t	f	{Dodgeball,"Polar Bear Plunge"}
b0wfh69ccyxd1liiqo72	949702754	rwebster	Ryan	Webster	Theta Chi		f	t	f	{"Educational Speaker","Lip Sync",Treds}
y33qd90u1dtxpq2k3ksu	224805581	jeull	Jacob	Eull	Delta Tau Delta		f	t	f	{Dodgeball}
1ghddh2whjvvryq5tqru	606618040	ohamusan	Oluwatimilehin	Amusan	Theta Delta Chi		t	t	f	{"Educational Speaker"}
5sglet6pfootuyizmtpw	936308373	kcoran	Kevin	Oran	Triangle		f	t	f	{"Trivia Blast"}
w8jz0kjyiaki2em2gcm5	815633839	Mcgratha	Adam	McGrath	Theta Delta Chi		f	t	f	{"Educational Speaker",Treds}
jh8r11j4oew8f0fxjmka	706358653	ncbraun	Nathan	Braun	Theta Chi		f	t	f	{Volleyball}
xl2j41q6ujg6ru953k0l	234894660	mpetron	Molly	Petron	Kappa Delta		f	t	f	{Dodgeball,Treds}
647742kq4oo4vzd7h23d	469107639	krapp	Katherine	Rapp	Gamma Phi Beta		t	t	f	{}
4krmpzjiv8ee63z1igwd	204301097	kdhutton	Karen	Hutton	Alpha Gamma Delta		t	t	f	{}
pkhuuzzxvmhiw7ath649	214242028	msenne19	Meredith	Senne	Alpha Gamma Delta		t	f	f	{}
msueob7kq9ja57yujf72	904839936	ejblake	Ethan	Blake	Phi Delta Theta		f	t	f	{Dodgeball}
2fmkoy1n0eb7p5labxcg	688017330	twsadler	Timothy	Sadler	Theta Delta Chi		f	t	f	{"Educational Speaker",Basketball}
d7c2lk9shiyip3zplj4h	614717103	kesontag	Kristin	Sontag	Kappa Alpha Theta		f	t	f	{}
su3ea8k1gy4llqa6v39a	921169249	kkwelch	Kiley	Welch	Kappa Alpha Theta		t	t	f	{"Lip Sync"}
puurnqyh2o0om2iv4dwp	662562901	cgustaf	Christel	Gustafson	Kappa Alpha Theta		t	t	f	{"Lip Sync"}
e0w8d1k30aasgo2fw8ta	281501244	erw	Evan	Wieczorek	Tau Kappa Epsilon		t	f	f	{"Educational Speaker"}
73u7l44kcp0sfiwb9v75	294533239	zcarpe	Zachary	Carpenter	Tau Kappa Epsilon		t	t	f	{"Educational Speaker"}
1ffaadoyf9t31dgrcbjf	804217414	kaprobst	Katelyn	Probst	Chi Omega		t	f	f	{"Educational Speaker"}
y7cwsm0859xdc5dtq514	279213962	jstev	Jeremiah	Stevens	Delta Sigma Phi		t	t	f	{}
u7dj6jc6l4v3f1m14tkh	173461316	kylev	Kyle	Von Der Linde	Pi Kappa Phi		t	t	f	{Dodgeball,Treds}
l5pm58121akgyizjs7i5	673927283	sts1	Sterling	Schaefer	Pi Kappa Phi		f	t	f	{}
zc8a3i1xkzkaybeubolj	931679749	abriehl	Andrew	Riehl	Chi Phi		f	t	f	{Dodgeball}
u100gkui9r2v61pbe907	870051182	ecnels	Erik	Nelson	Delta Tau Delta		t	f	f	{"Lip Sync"}
3k806g56vn0rdlkclj74	229904675	ekaschke	Ellen	Kaschke	Pi Beta Phi		f	t	f	{Dodgeball}
jwrp36q4dtl70g8si8on	317718401	mdhaines	Maddison	Haines	Alpha Chi Omega		f	t	f	{Treds}
fiojaizkweu189y5y9yv	660373714	cehut	Cody	Hut	Delta Sigma Phi		f	t	f	{Dodgeball}
673d9i8c4l06xr3z0qke	330895602	mbjordan	Madison	Jordan	Alpha Gamma Delta		t	t	f	{}
ib07tx7sasft9b4fba5d	770122386	mjarnost	Michael	Arnost	Sigma Phi Epsilon		t	t	f	{Dodgeball}
r1988qutm3atiy83ih37	5842862	brmeador	Brett	Meador	FarmHouse		t	t	f	{}
b8sihi9o7wd7qaa8i94n	620547952	gmperrin	Grace	Perrin	Kappa Kappa Gamma	Crew	f	t	f	{}
ihco4mzpbuncqa289ifa	110805695	rjtrumm	Robert	Trumm	Alpha Gamma Rho		f	t	f	{}
xciz2pambid485x6ftfa	957481525	mbethel	Mary	Bethel	Chi Omega		t	t	f	{"Educational Speaker"}
xixdnppfnhd4lcoomzff	295453158	iwgesell	Ian	Gesell	Beta Sigma Psi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
j19fzsh4dv3ar08b7f2y	454232804	johne	John	Ekosidekas	Sigma Pi		f	t	f	{"Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
qkca99gu7hhh0gzx3dw3	825520717	jmgia	Jordan	Giachetti	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
oe4blpclz7mw9iqeaq7c	63331296	kkuyper	Kenneth	Kuyper	FarmHouse		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
wb6pw4c1i4u4km9qg5bk	866888050	ericaj	Erica	Johnson	Chi Omega		f	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
o0id1k5ba6f7mmfhmbd1	169446277	clb	Courtney	Bruesehoff	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
539clm3qksumtqzrz3dh	803100326	gferrell	George	Ferrell	FarmHouse		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
wcu4domlhdosl8my7cbo	580706159	breandan	Breandan	McClure	Theta Delta Chi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
e7uf7l689048wkw8f5d4	428072645	joshuatq	Joshua	Quesenberry	Pi Kappa Alpha		t	t	f	{Broomball}
nui5yo24wcfocl8eqer8	490252782	nmpieper	Nicholas	Pieper	Chi Phi		t	t	f	{"Polar Bear Plunge"}
sidy3de0ros8jc9s86yi	222531309	mmadison	Margaret	Madison	Delta Zeta		t	t	f	{Dodgeball,"Polar Bear Plunge"}
jlgu3aqt037zdhbk8j2d	158921787	amchavez	Anthony	Chavez	Adelante		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
w3vzjy6pbhwr0ztwc6q7	382615270	gechales	Gilbert	Echales	Adelante		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
6hr5typcnnbn8i900wau	398623910	sjsoko	Stephen	Soko	Phi Gamma Delta		f	t	f	{Dodgeball,"Polar Bear Plunge"}
tbt0axwqzvwtru7sqksp	945119175	wetzeler	Nicholas	Wetzeler	Phi Gamma Delta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
u41dasvffao8xore67bc	112693581	tjcoder	Tyler	Coder	Delta Chi		f	t	f	{Treds,"Polar Bear Plunge"}
dv62jrfznyx5j4u0vym8	248052833	anichols	Alec	Nichols	Theta Chi		f	t	f	{"Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
f3sdc0u6bo7vet4z9x0u	103362259	rbbarnes	Rachael	Barnes	Alpha Delta Pi		f	t	f	{Dodgeball,"Show Me The Greeks","Educational Speaker",Broomball}
5jhvnz73721qzsow6m6p	647021396	mrnull	Mitchell	Null	Theta Delta Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge",Broomball}
xy1h7je7lahu3rqk7mc0	368614246	khartjen	Kellee	Hartjen	Alpha Sigma Kappa		f	t	f	{"Trivia Blast",Broomball}
bza0plzobwtnr3zmx24p	787512726	ejlines	Everett	Lines	Triangle		f	t	f	{"Educational Speaker",Treds,Basketball}
4i6nv7m0xix84viqss46	992788818	odlacona	Olivia	Lacona	Gamma Phi Beta		t	t	f	{"Educational Speaker","Lip Sync"}
wmqcy3fy947yxhfmedmd	404623278	aliyahc	Aliyah	Campbell	Phi Beta Chi		f	t	f	{Dodgeball}
wdlbfp2rxaew7dbza1lj	81863809	ncm1	Nicholas	Mulderink	Alpha Sigma Phi		t	t	f	{"Educational Speaker"}
7yy5nypafmn20p16vjc7	447251805	brettl	Brett	Lilienthal	Alpha Gamma Rho		f	t	f	{Dodgeball,Treds}
y61k75da5xtg9u4wi01d	755541787	lwood	Logan	Wood	Delta Tau Delta		f	t	f	{Volleyball}
io9i30effbxgh1xz0pds	947474528	thouse	Tyler	House	Sigma Chi		f	t	f	{Volleyball,"Educational Speaker"}
0d5500ngcfn1j5jsx6sj	713363676	danielm	Daniel	Marjanovic	Delta Upsilon		f	t	f	{Volleyball,Basketball}
j2jletpr7eyftpnzed7e	150231108	swansson	Erin	Swansson	Chi Omega		t	t	f	{Volleyball}
lsqz0zm7wc3geu4119rd	111213127	kbead	Kara	Beadleston	Kappa Kappa Gamma		t	t	f	{Volleyball,"Lip Sync"}
tfueo8p9f1vsldgtbm2k	129634537	msandoz	Madelyn	Sandoz	Chi Omega		f	t	f	{"Show Me The Greeks","Educational Speaker"}
b57nl7w3aw8ohq63rjpy	376446070	cpyles	Creighton	Pyles	Pi Kappa Alpha		f	t	f	{Volleyball}
53i7soxwt34gsyml8328	390782392	hcjack	Hannah	Jackosky	Alpha Omicron Pi		t	t	f	{Volleyball}
pysbyyv2qn1oqa78tmn3	759563837	eegile	Emily	Gile	Alpha Phi		f	t	f	{Volleyball}
amupbkj5rnv23zlzbnh9	727412686	kpbodley	Kyle	Bodley	Alpha Sigma Phi		f	t	f	{Volleyball}
plq87w00ij0x5g80pp0l	376990646	wfohora	William	O'Hora	Sigma Phi Epsilon		t	f	f	{"Educational Speaker"}
w6f200y600ppoxf5snhh	534170666	mfetters	Madison	Fetters	Kappa Kappa Gamma		t	t	f	{Volleyball}
4o02rxgnes1p384fp5pg	293882589	mumme	Dillyn	Mumme	ACACIA		f	t	f	{Volleyball,"Educational Speaker"}
842vamhps5kfzih9q6xt	265089825	hrmarsh	Hannah	Marsh	Pi Beta Phi		f	t	f	{Dodgeball,Basketball}
9gp7fg6yq6x12wsy3xrp	853226374	hjford	Hayden	Ford	Sigma Pi		f	t	f	{Volleyball,"Educational Speaker"}
cwvylsvgvnwbrinitu3u	615039425	banwartl	Lauren	Banwart	Kappa Alpha Theta	Central	f	t	f	{}
6vrd08xryt7ncm0h9x6q	50241191	zziesmer	Zachary	Ziesmer	Sigma Phi Epsilon		f	t	f	{Volleyball}
3txnnhf5x82kov3gsuld	638168555	nawrocki	Katherine	Nawrocki	Kappa Kappa Gamma		f	t	f	{Dodgeball}
67z61kinbs3cw55qjsz2	310226917	mattgunk	Matthew	Gunkelman	Delta Upsilon		f	t	f	{}
ccf0sr5wl7zaxdf9vthy	838352535	laurens	Lauren	Sorenson	Sigma Kappa		t	t	f	{"Educational Speaker"}
t616h2h6lgvo1mi8gh22	139932793	arix	Alexandria	Rix	Alpha Sigma Kappa		f	t	f	{Volleyball}
si7w0xxuuew74iq2jwem	852135309	amandaa1	Amanda	Albright	Kappa Alpha Theta		f	t	f	{}
jbt98gubkae2mc132dm2	264465201	abrayton	Abby	Brayton	Alpha Chi Omega		f	t	f	{Volleyball}
26th3vchy950jdw6t39v	31521518	haileyv	Hailey	Vollbrecht	Chi Omega		t	t	f	{}
c507ma0p5hg813l0xqvp	450226777	jjdelong	Joel	Delong	Tau Kappa Epsilon		f	t	f	{Dodgeball,"Educational Speaker"}
tg7su59t7ha7cxiloal7	276775499	nschim	Nicole	Schimerowski	Alpha Delta Pi		f	t	f	{"Educational Speaker"}
usk2olb9gtpy4m887xn7	207294087	nlambert	Nicollette	Lambert	Phi Beta Chi		f	t	f	{}
ezruowc66rc87ezx3oyl	490922452	juntunen	Allison	Juntunen	Alpha Chi Omega		f	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
spnge0j2rj7q2j79g7e2	693390698	rdhubby	Russell	Hubby	Beta Sigma Psi		f	t	f	{Dodgeball,"Polar Bear Plunge"}
d3fpgtzbl2km9p30k06v	366341008	lstrat	Luke	Stratmoen	FarmHouse		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
os9vc8lxkxpuhkrs5jbb	301129857	amparker	Alexis	Parker	Sigma Kappa		t	t	f	{Volleyball,"Polar Bear Plunge"}
3qeax7cwzyhifjqa2xwo	353143791	ahil13	Austin	Hilbrands	FarmHouse		t	t	f	{Volleyball,"Lip Sync","Polar Bear Plunge"}
756eaoz7a0mq9v7hglzg	756417683	jlmiller	Joseph	Miller	Sigma Phi Epsilon		t	t	f	{Treds,"Polar Bear Plunge"}
rww8bfb4xo8496eojlr0	785727943	adbetti	Allison	Betti	Alpha Phi		f	t	f	{"Polar Bear Plunge"}
htlc2a71hxj70qabxv7m	854613821	mjallen	Mason	Allen	Kappa Sigma		t	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
gfrouanv4kj1wx9z4586	946213268	maggiel	Maggie	Larson	Delta Delta Delta		f	t	f	{Volleyball,"Lip Sync","Polar Bear Plunge"}
ed6ced38vkpwb3i025mr	380421041	sllarsen	Sydney	Larsen	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
e0ol7ihgxf8splfcq8rh	268893649	gmathews	Gabriel	Mathews	Phi Kappa Psi		f	t	f	{Volleyball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
gnbeekh5n1sjq9uezy99	176736607	sloanev	Sloane	Vander Zwaag	Delta Delta Delta		t	t	f	{Volleyball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
czvxrpzaj659dk565ezg	492565101	riggs	Mitchell	Riggs	Phi Gamma Delta		f	t	f	{Volleyball,"Polar Bear Plunge"}
tpiuawyg3is9qfjcp8ll	460469034	jproehl	Jesse	Proehl	Delta Zeta		t	t	f	{Volleyball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
hdpzio4cqqto0f2atnd9	564920356	rjvdveen	Ryan	Van der Veen	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
rvifkswf97ihlduaa60q	634579946	mjsmith	Matthew	Smith	Sigma Chi		f	t	f	{"Show Me The Greeks","Educational Speaker","Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
p25g0rwuwnu4e8t7mkec	146919773	scartier	Samantha	Cartier	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
rlteq88cajg787tqz7s3	411611200	lucasm1	Lucas	Manwiller	Phi Gamma Delta		t	t	f	{"Educational Speaker","Lip Sync"}
c7j3gssok0fmsli4pwei	248790567	alexa	Alexa	Brown	Kappa Alpha Theta		f	t	f	{Volleyball}
1yl9gs0a1i9qv5xjmtrs	337326990	mwalt19	Michael	Walt	Phi Delta Theta		f	t	f	{Volleyball}
i5z83atfh1dkr6ppjbch	325496171	albeese	Austyn	Beese	Kappa Alpha Theta		f	t	f	{Volleyball}
s7yz4zbqjp23jw3cezls	854651798	abbiew	Abigail	Weatherwax	Kappa Delta		f	t	f	{"Karaoke 1st Cuts","Educational Speaker"}
gal67au2x212kjo39nyo	704852148	eddiea	Eddie	Arndorfer	Delta Tau Delta		f	t	f	{"Karaoke 1st Cuts","Karaoke 2nd Cuts"}
3o3zl96xkvf8vode1g62	906299394	gpotadle	Greer	Potadle	Kappa Kappa Gamma		t	t	f	{Volleyball,"Lip Sync"}
y0r92rmcxn8ujx7cue9u	298882615	fmcqueen	Forrest	McQueen	Pi Kappa Alpha		f	t	f	{Dodgeball,Volleyball,Treds,Basketball}
k88shl47f6frthdp9rzs	380305926	hdaubitz	Harrison	Daubitz	Beta Sigma Psi		t	t	f	{"Karaoke 1st Cuts"}
en3dvsyjixk59mqnwu8p	638013376	rbiggs	Ryan	Biggs	Delta Lambda Phi		f	t	f	{Dodgeball,Volleyball,Treds,Basketball}
hr4safx30yp4nu15akts	233915698	mjhowe	Miranda	Howe	Alpha Phi		f	t	f	{Volleyball}
8okh5xysjm8sceb0r9vj	226788587	henrikw	Henrik	Wiesemeyer	Pi Kappa Phi		t	t	f	{Volleyball,Treds}
hzqkim01ivirswjsmwu6	991356394	stefaniy	Stefani	Youngquist	Pi Beta Phi		t	f	f	{"Lip Sync","Educational Speaker"}
xe3nrs3gge75rp6eywu6	848066244	aarensme	Angela	Arensmeier	Pi Beta Phi		t	f	f	{"Lip Sync"}
2gidpqxsumtx42vbeore	254397208	alexey	Alexey	Acevedo	FarmHouse		t	f	f	{"Lip Sync"}
hze5es7l5shpezt3pans	410957575	ashtoby	Ashley	Tobias	Pi Beta Phi		t	f	f	{"Lip Sync"}
byxg3007trext2nvlpwi	239709470	mlpeters	Mathias	Peters	Alpha Gamma Rho		t	t	f	{Volleyball,"Educational Speaker",Basketball}
mu6u8aqdfup5gsoybqau	347950603	hweis	Haley	Weis	Alpha Gamma Delta		t	t	f	{Volleyball,"Educational Speaker"}
r95y89pv3btqsjzeo3zb	490771301	jdc0615	Jackson	Cunningham	Delta Tau Delta		f	t	f	{}
7pk892c7i9wr9gfarzqz	881409529	mboal	Mitchell	Boal	Delta Tau Delta		f	t	f	{Treds}
x8qh6xdyke0xqa0zi19i	788069305	jackbc97	Jack	Christensen	Pi Kappa Phi		t	t	f	{"Lip Sync"}
mlb0lwob3fxl2wgblzbf	924801878	pjfield	Pierce	Fieldsend	Delta Tau Delta		f	t	f	{"Karaoke 1st Cuts","Karaoke 2nd Cuts"}
1rplhgdqfzjj98aauhfp	809273465	rachela1	Rachel	Alexander	Gamma Phi Beta		f	t	f	{Volleyball}
oza93uo3jrf8ifqjso8t	2918916	grantmc	Grant	McMillan	Alpha Gamma Rho		f	t	f	{"Show Me The Greeks"}
h2yszmblwru7j2xwswm0	781349569	jrgiles	Jalen	Giles	Phi Beta Chi		f	t	f	{}
q05jap2xct4jcpib29g1	330234905	hillmann	Jack	Hillmann	Delta Sigma Phi		f	t	f	{Volleyball}
vlm7vi6sawgrfwqlwrnh	83414331	alysongh	Alyson	Galway-Howard	Alpha Sigma Kappa		f	t	f	{"Educational Speaker"}
ec6a50yga1j7iwswzyes	181585448	eweymo	Emily	Weymouth	Kappa Alpha Theta		f	t	f	{Dodgeball,"Educational Speaker","Lip Sync"}
lj2k44urokhtn9p70t1c	433746341	njh	Nathan	Hollander	Beta Sigma Psi		f	t	f	{Volleyball}
tooct7g8728cone9xyg5	822662841	mnkeane	Michelle	Keane	Alpha Delta Pi		f	t	f	{Volleyball}
bdrww41xxg396i9biq6r	401506105	rwirth	Riley	Wirth	Phi Delta Theta		f	t	f	{Treds,Basketball}
gfqb0nq78pi1pytry5jv	358840518	eljacoby	Elizabeth	Jacoby	Kappa Alpha Theta		f	t	f	{Volleyball}
ffgnirg9cr5487tzdpk2	945262318	brendel	Courtney	Brendel	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
2mspgbmieenw56xlyk57	246640394	quinlan	Quinlan	Moran	Alpha Delta Pi		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Karaoke 2nd Cuts","Polar Bear Plunge"}
p3r6ds64ctx8tn0t3lw5	419132714	sadams	Sean	Adams	Sigma Pi		f	t	f	{"Show Me The Greeks","Trivia Blast","Polar Bear Plunge"}
0yda7qlsatt78maxd1dx	411871529	bbucha14	Benjamin	Buchanan	FarmHouse		t	t	f	{Volleyball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
gwtv4a2lrfvdcbwhia4b	566640099	jaclyn19	Jaclyn	Przybylski	Alpha Gamma Delta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
xlteu3386d3pto24iic5	754718989	rvgraham	Riley	Graham	Alpha Omicron Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
gwfhh42q5pgbcwc8l9ds	19975956	aflester	Alexander	Lester	Sigma Phi Epsilon		t	t	f	{Volleyball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
7v9s7i0qamicmawda0ds	357355999	staebell	Kathleen	Staebell	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
w2uykvq3pnox6hz6w4io	874015166	carterb	Carter	Brouillette	Lambda Chi Alpha		t	t	f	{Volleyball,"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
6oomp66vsda2m09ru8w8	695210516	kevink	Kevin	Korniejczuk	Lambda Chi Alpha		t	t	f	{"Show Me The Greeks","Lip Sync","Polar Bear Plunge"}
flrso90g7o2689wktaqs	291083818	ggothard	Gabriella	Gothard	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
4y02e9k46bfun7feoapa	169009869	jlinden	Jake	Linden	Sigma Chi		t	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
4wtimqsiovf75wascxdt	271933662	cjludwig	Connor	Ludwig	Adelante		f	t	f	{"Show Me The Greeks","Educational Speaker","Lip Sync",Treds,"Polar Bear Plunge"}
czdfwplxpzwclc64fp8k	866887021	aalevis	Allison	Levis	Delta Zeta		t	t	f	{Volleyball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
fmtd7tm432oxttsowx0c	289486197	rsmykow	Ryan	Smykowski	Pi Kappa Phi		t	t	f	{"Polar Bear Plunge"}
gsopq5p6957fs94uo83e	57059070	leykiel	Elan	Leykin	Alpha Sigma Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
kum3t28p13v03b9m9b53	901459587	lapgar	Elizabeth	Apgar	Pi Beta Phi		t	f	f	{"Lip Sync"}
ph4yc4euod42txdkf35j	649914290	kaybeck	Kayleen	Beck	Kappa Delta		f	t	f	{Volleyball,"Educational Speaker"}
0in09cttf5dqhibuknso	179213882	gev	Gabrielle	Voulgaris	Pi Beta Phi		t	f	f	{"Lip Sync"}
3szdy02uc98pgj78iaqe	400440088	mermarko	Meredith	Markowitz	Alpha Omicron Pi		t	f	f	{"Lip Sync","Educational Speaker"}
rz1b0bf4x7yhtslt9k5j	156297169	sawalter	Sarah	Walter	Alpha Phi		t	f	f	{}
721x1yc9fjg8n8npapjc	163094240	amcherry	Allison	Cherry	Kappa Delta		t	f	f	{"Educational Speaker"}
x80ya0wztmpqpqz4seb0	728746042	vertanen	Kelsie	Vertanen	Kappa Kappa Gamma		t	t	f	{"Lip Sync"}
qhsjprcpb2ne02wxctef	626539938	tjthomas	Trista	Thomas	Kappa Delta		t	f	f	{"Lip Sync"}
pky3ptd141warbd3o6rb	756067312	eswan13	Erica	Swanson	Pi Beta Phi		t	f	f	{}
quypdt84ik6nd8x54b6f	851463641	nbell	Nicole	Bell	Sigma Kappa		t	f	f	{}
0whrqcny1pwbx9v1p267	388476088	anesler	Angela	Nesler	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker"}
5xarvwbwghglmlsjr710	918061165	ckinney	Cali	Kinney	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
n8wxxmqejfzc1bybf36p	490306833	lmbesch	Lucy	Besch	Kappa Kappa Gamma		f	t	f	{"Karaoke 1st Cuts","Karaoke 2nd Cuts"}
7yghndz1hh8shbshn8o0	382872490	glorack	Gabe	Lorack	Alpha Gamma Rho		f	t	f	{Volleyball,"Educational Speaker",Treds}
uskbmwn1jftvnmgch9y7	252821569	ersmith1	Elizabeth	Smith	Gamma Phi Beta		f	t	f	{"Karaoke 1st Cuts"}
82hd1nfcvfif1durt905	701728027	buitrago	Maria	Buitrago	Gamma Phi Beta		t	t	f	{}
imdg5t66dbluodn5v988	632209578	crobison	Clayton	Robison	Alpha Gamma Rho		f	t	f	{"Educational Speaker",Basketball}
pa1r352zucne230kat1l	958708751	malleys	Malley	Stevenson	Gamma Phi Beta		t	t	f	{}
ewt5v9oh5m20ty8okwrz	2355353	ijh	Ivy	Hogg	Chi Omega		t	t	f	{"Karaoke 1st Cuts"}
mjdqy3u6nrwclgv9aw5a	339458119	jperrin	Jensyn	Perrin	Alpha Gamma Delta		f	t	f	{"Show Me The Greeks","Educational Speaker"}
71eutodxrrs7x997hlfj	863203341	erinrett	Erin	Rettenmaier	Alpha Delta Pi		f	t	f	{Volleyball}
0qr9reisfda31z88km2o	126682591	qjnagel	Quintin	Nagel	Alpha Sigma Phi		t	t	f	{"Lip Sync"}
cntsidghtslmp2gvoajm	200400224	mjfoster	Mitchell	Foster	Phi Kappa Theta		t	t	f	{Volleyball,"Lip Sync","Educational Speaker"}
bjjprexirwtlgo1xi0xb	393947554	kglaess	Kaesey	Glaess	Alpha Delta Pi		t	f	f	{}
00bge5xdzh3o1z9lo0jw	765178414	balmasi	Brooke	Almasi	Alpha Delta Pi		f	t	f	{"Karaoke 1st Cuts","Trivia Blast","Polar Bear Plunge"}
vyavddko9ixpw8gr8vc2	114020939	logelaj	Alyson	Logel	Phi Beta Chi		f	t	f	{Volleyball,"Polar Bear Plunge"}
gapk3cechpaodsvysg69	194769811	voorhees	Taylor	Voorhees	Pi Beta Phi		t	t	f	{Volleyball,"Karaoke 1st Cuts","Lip Sync","Educational Speaker","Polar Bear Plunge"}
0xltrd3xvh35mh3i6wey	490707237	dibarker	David	Barker	FarmHouse		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
4xw0vrrqnobhr38411na	442929487	kilcoyne	Kassidy	Kilcoyne	Alpha Omicron Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
onqakgz6qxewbapsq9zm	226172947	amormann	Allie	Mormann	Alpha Omicron Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
ultd04rvcel66zrvmczx	465654220	cschar	Carolyn	Schar	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
8kmqkgyabg5bhywu8kge	178492314	btn	Brett	Nicholson	FarmHouse		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Educational Speaker","Karaoke 2nd Cuts","Polar Bear Plunge"}
0snumn52b4gj67e15kzy	944946002	samilip	Samantha	Lipkowitz	Alpha Omicron Pi		t	t	f	{Volleyball,"Lip Sync",Treds,"Polar Bear Plunge"}
3mit9j2bk7sojo0pz1px	121695333	meerwine	MacKenzie	Erwine	Alpha Phi		t	t	f	{"Polar Bear Plunge"}
bdeouirzcj1jyu11wgbi	142130012	mrmoses	Madeline	Moses	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
2h0tma6zkc79w8phvabr	612507896	heidid	Heidi	Darrington	Gamma Phi Beta		t	t	f	{"Polar Bear Plunge"}
e5j4yw343rd4lgmqakwm	653442790	hrlarke	Harold	Larke	Alpha Sigma Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
fiowamoipnneerrpj8w7	561019459	jpsteffe	Joshua	Steffensmeier	Lambda Chi Alpha		t	t	f	{"Lip Sync","Polar Bear Plunge"}
1f1z7bawya00hpk0u70d	215486271	jjrogers	Joseph	Rogers	Theta Chi		f	t	f	{"Show Me The Greeks","Lip Sync","Polar Bear Plunge"}
9l9tdbxk6z8fgp19v45v	904342463	dolehide	Daniel	Dolehide	Pi Kappa Alpha		t	t	f	{Volleyball,"Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
gbldbsmllycrx6xsvzc5	692685994	rgilbert	Ryan	Gilbert	Delta Tau Delta		f	t	f	{Volleyball,"Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
0qd6nyzhutktu0ptm6qu	182258101	nallen	Nicole	Allen	Pi Beta Phi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
wn10yrpxyy6q515adc1z	993131139	rleo12	Ryan	Leo	Lambda Chi Alpha		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
4ghw8m7o5pqz7acvh8kq	431832401	aps	Austin	Schladetzky	FarmHouse		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
r1q5tsc77dd67ekfhg4y	792965194	haleyd	Haley	Daughhetee	Pi Beta Phi		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Educational Speaker","Polar Bear Plunge"}
lng9hs8na5v7jko3tclr	231223993	jakleckl	Joseph	Kleckler	Alpha Sigma Phi		t	t	f	{"Show Me The Greeks","Karaoke 1st Cuts","Lip Sync",Broomball}
umi28u2plon7df8ujjze	75338291	kennethh	Kenneth	Ho	Alpha Sigma Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
dnzk29kbzgykcdbgrb6g	677632956	angelab	Angela	Benjegerdes	Alpha Delta Pi		f	t	f	{}
oix2ak8n07bhcaftsm1q	109913828	atguhin	Andrew	Guhin	Delta Tau Delta		f	t	f	{}
40y6gtdhstuwmizoopiv	850737888	dthomson	David	Thomson	Tau Kappa Epsilon		t	t	f	{}
ti2ews7qnoblsqul3drs	94568474	ckeckert	Christine	Eckert	Alpha Sigma Kappa		f	t	f	{}
ec6vvsprg8qbequ7i6ld	281765484	lallard	Lindsay	Allard	Phi Beta Chi		f	t	f	{}
99q3zwcvcxitxo9q1olb	179326168	julietc	Juliet	Chernesky	Alpha Gamma Delta		t	t	f	{"Lip Sync"}
r39vkoxpscee4gy1mj22	711900221	jolenes	Jolene	Schaefer	Alpha Chi Omega		t	f	f	{"Lip Sync"}
o7mzxzesa5vee6u73qr3	380046698	klanders	Kala	Landers	Delta Zeta		t	f	f	{}
685dh4w48hgir3qv5gyi	261901640	tbrammer	Trevor	Brammer	Delta Lambda Phi		t	t	f	{"Educational Speaker","Lip Sync","Trivia Blast"}
ss5d82ofoodu1ea0rui8	880494615	orness	Michael	Orness	FarmHouse		t	t	f	{"Lip Sync","Educational Speaker",Treds,Basketball}
db7g1xqf2thc449wf4ml	275630411	vattwood	Valerie	Attwood	Kappa Delta		t	t	f	{"Karaoke 1st Cuts","Educational Speaker"}
lctzlzn4u709jxed9y67	401757356	georgem	George	Melookaran	Phi Kappa Psi		t	f	f	{"Educational Speaker"}
85rk2eglla45lh2djpts	3834831	jamesmac	James	McConnell	Sigma Phi Epsilon		t	t	f	{"Karaoke 1st Cuts","Karaoke 2nd Cuts"}
eluzpkmdk3rl0lpu34n6	168914777	hannag	Hanna	Groepper	Alpha Omicron Pi		t	f	f	{"Lip Sync","Educational Speaker"}
g10tuyyw26ls063dgehz	613164552	labeck	Lindsey	Beck	Alpha Gamma Delta		t	f	f	{"Educational Speaker"}
dff8wc22yn8zzs8tcfeb	50146096	eblicke	Emma	Blickensderfer	Kappa Kappa Gamma		t	t	f	{"Karaoke 1st Cuts","Karaoke 2nd Cuts"}
w4ydrtrfl99dqbfuoo5e	602227658	magarcia	Matias	Garcia	Alpha Kappa Lambda		t	f	f	{"Educational Speaker"}
fv4e4dz5c0fesy2xfyfr	491025551	bld	Benjamin	Danielson	ACACIA		t	f	f	{"Lip Sync","Educational Speaker"}
ox7jdh4j8xuv41gcqi8s	653111488	arobles	Allen-Erika	Robles	Alpha Chi Omega		t	f	f	{}
mriu3ne5mux1uoadmguq	872959122	matthewc	Matthew	Colasuono	Pi Kappa Alpha		t	f	f	{}
rm84788h1wvmdbdt3ntu	996977982	aewhaley	Anna	Whaley	Pi Beta Phi		t	f	f	{"Lip Sync","Educational Speaker"}
1pi7ztf3du768c8303kf	495979511	hmccarey	Harrison	McCarey	Delta Chi		t	t	f	{"Show Me The Greeks"}
t2m0484zeghmh0s6ie3n	145149004	jsherry	John-Patrick	Sherry	Alpha Sigma Phi		t	t	f	{Dodgeball,Volleyball,"Lip Sync","Educational Speaker"}
63f1fbzfnzcj58fmqs5p	449853404	sschlag	Shelbe	Schlag	Sigma Kappa		t	f	f	{"Educational Speaker"}
4prjdz0y7l61pdlof84o	115048962	collinb	Collin	Blatchford	Tau Kappa Epsilon		t	f	f	{}
9re9pgt53eypobh8tl1p	154333179	kaldrich	Kaitlyn	Aldrich	Alpha Gamma Delta		f	t	f	{"Trivia Blast"}
tt4vhamcq188vdfnce9l	972338367	alexs1	Alex	Schooley	Alpha Sigma Phi		t	t	f	{}
bon0jfxobxzxtl2shdm9	248975727	jlerbst	Jessica	Erbst	Kappa Alpha Theta		t	t	f	{"Karaoke 1st Cuts","Lip Sync"}
mbdeuwnwcv0s8j6yx1t7	927463537	mteubert	Matthew	Teubert	Kappa Sigma	Crew	f	t	f	{}
6sbs4k0v3yvh09lvw1sc	594182589	jstein	Jacob	Steinbeck	Alpha Gamma Rho		f	t	f	{"Karaoke 1st Cuts"}
4f140c9w5dp37i3cggo5	423908485	duhrkopf	Kevin	Duhrkopf	ACACIA		t	f	f	{"Lip Sync"}
89ejcq52pwuiml81d0w6	79723644	jjfoss	Joshua	Foss	ACACIA		t	f	f	{"Lip Sync"}
w1d1lgmcmfy8ypjpuhf9	491170697	dtwalsh	Dillon	Walsh	Delta Chi		t	t	f	{"Lip Sync"}
1gypquqpliyg68x92xkg	706727021	laj	Lucas	Johnson	Beta Sigma Psi		t	t	f	{"Show Me The Greeks",Treds,"Polar Bear Plunge"}
c7wyvvw8toehr4kty63o	828757963	katies14	Kaitlyn	Smith	Kappa Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
rcfek6hyodpa0fdehv03	69058990	erbaglan	Edward	Baglan	Delta Upsilon		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
uewfmgi4pypc6wj81c9s	677975322	mnasser	Mahammed	Nasser	Sigma Pi		t	t	f	{Basketball,"Polar Bear Plunge"}
fg95dtvgixh4kpby8219	790789027	luna4	Jylian	Ramsey	Alpha Chi Omega		f	t	f	{"Karaoke 1st Cuts","Polar Bear Plunge"}
0ts3fi5ingswvb3q0yqu	208632424	klderda	Kasey	Derda	Alpha Omicron Pi		t	t	f	{"Show Me The Greeks","Lip Sync","Educational Speaker","Polar Bear Plunge"}
by5xugzvtoptf37zzuhk	579550180	majones	Mackenzie	Jones	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
l3zuuy0e7p58nhg0nml0	604997393	zekiefer	Zoe	Kiefer	Alpha Omicron Pi		t	t	f	{Volleyball,"Lip Sync",Treds,"Polar Bear Plunge"}
pcgzgczv1nogzmjbuvyk	829005177	jakeshow	Jacob	Showalter	Alpha Gamma Rho		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
82iteesxq3ak5swx3cp6	957349393	lstenger	Lauren	Stenger	Alpha Gamma Delta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
ivwo6ccaeyreyykbeder	836444609	zachw	Zachary	Williamson	Phi Gamma Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
72ybjv2dvdnmb4vxtsed	976515540	jillm	Jill	Muehlbauer	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
mrl2u04brv80zv0jqjq4	862068235	arvegter	Amber	Vegter	Kappa Alpha Theta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
37j4nv29p0p48xt9ym8g	853583731	cbrosius	Caroline	Brosius	Delta Zeta		t	t	f	{"Polar Bear Plunge"}
n8jau02r3q3bgsjh9tvy	188447283	cjdion	Cameron	Dion	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
jo24i55gtexo82ej32rh	982675694	rejones3	Russell	Jones	FarmHouse		t	t	f	{"Trivia Blast","Polar Bear Plunge"}
snzbvh9z4bxb32xjdap2	607342736	kateanne	Kaitlyn	Trampel	Pi Beta Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
dlmxq535rdligcuthfh0	554447917	cdwood	Colton	Wood	Delta Sigma Phi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
x5vxqvra17aanh7wp79s	758189512	Flynnm	Mallory	Flynn	Alpha Sigma Kappa		t	f	f	{"Lip Sync"}
qtny6rh83chozg3yn7ry	776506755	dbratz	Devon	Bratz	Pi Kappa Alpha		t	t	f	{Dodgeball}
9yxkmtx9lzetaia9aero	709766101	breppel	Benjamin	Eppel	Phi Delta Theta		t	f	f	{"Educational Speaker"}
mtfga8t0k16ah2qwnfht	783783000	khbarth	Kassidy	Barth	Sigma Kappa		t	t	f	{"Lip Sync"}
gyv21aaflbmerxdv31oy	195596401	krslimak	Katherine	Slimak	Alpha Phi		f	t	f	{Volleyball,"Educational Speaker"}
t44uz5iojwde0u6fnxrf	832353522	daparker	Delaney	Parker	Alpha Gamma Delta		t	f	f	{"Lip Sync","Educational Speaker"}
b5238bp2g361brk40xz8	775410688	andreah	Andrea	Holtman	Kappa Delta		t	t	f	{Dodgeball,"Karaoke 1st Cuts","Lip Sync"}
mempgqa938quvfbapir9	247475228	madisynm	Madisyn	McCarville	Chi Omega		f	t	f	{"Educational Speaker"}
c3o3ckn1epw93i9ston8	751122396	htriedl	Hunter	Riedl	Phi Delta Theta		t	t	f	{Volleyball,"Lip Sync"}
xku69votx8xkmdmcc9sd	601352752	madisunv	Madisun	Vangundy	Gamma Phi Beta		f	t	f	{}
liynh1lurn5hksplul74	378841487	edleslie	Elizabeth	Leslie	Kappa Alpha Theta		t	t	f	{"Lip Sync"}
fv7ks3i64uilaawc1y67	51843792	kallynt	Kallyn	Thomson	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
7lbjpcoe2wi7lywul4o0	188336185	lettinga	Mason	Lettinga	Alpha Gamma Rho		t	t	f	{"Educational Speaker"}
rrbw9kbzd7wogiukhsz7	416914522	hgreiner	Hanna	Greiner	Alpha Sigma Kappa		t	t	f	{"Lip Sync"}
elfookoe2vx9cmitgc5n	770375682	jessholt	Jessica	Holtkamp	Alpha Sigma Kappa		t	f	f	{"Lip Sync"}
054s62yaonc4e9xwoaot	582134577	kjschu	Kelby	Schultz	Delta Chi		t	f	f	{"Lip Sync","Educational Speaker"}
44sk9qjwnua3uptx6zn5	580035479	jrw	Joseph	Weissmann	Pi Kappa Alpha		t	t	f	{"Lip Sync"}
iewmi5pcnysjacpbo0al	700697998	mveytsel	Mitchell	Veytsel	Pi Kappa Alpha		f	t	f	{}
3mjmms99c2h09gwktrvw	433169764	jceri22	John	Ceriotti	Phi Delta Theta		t	f	f	{"Lip Sync"}
oqru2d6o0d9zxrd9w64b	677794358	molleigh	Molleigh	Rasmussen	Alpha Sigma Kappa		t	f	f	{"Lip Sync"}
wsmjhghgztzo2mqamq0b	114661572	marenaw	Marena	Wallschlaeger	Alpha Gamma Delta		t	f	f	{"Lip Sync"}
2m39eys5qi42zltb25hn	285500235	slyoung	Selena	Young	Kappa Delta		t	f	f	{"Lip Sync"}
2ccyyuv6a91g8gxfn5i7	3293314	Jeteberg	Jenna	Teberg	Alpha Sigma Kappa		t	t	f	{"Lip Sync"}
o7q9nux6x9jw1hepr815	341399094	carlosr	Carlos	Ramirez	Adelante		f	t	f	{Dodgeball,"Educational Speaker"}
9n34rd0u83w7pjqx1kgf	59731672	sdadkins	Samantha	Adkins	Alpha Gamma Delta		t	t	f	{"Karaoke 1st Cuts","Lip Sync"}
to0fpn8yup0ed6d0mz6b	718076359	nmeyer47	Nicholas	Paulsmeyer	Lambda Chi Alpha		t	t	f	{"Educational Speaker"}
yf4d2q37oy8hi91qojs5	884222339	kimpston	Emily	Kimpston	Kappa Delta		t	t	f	{"Show Me The Greeks","Karaoke 1st Cuts","Lip Sync"}
9y23pv30kd4vuf53cdxq	976084109	blbanger	Bailey	Banger	Alpha Phi		t	t	f	{}
tji3xuyocvwggjcwjac2	221745551	javorina	Madalyn	Javorina	Gamma Phi Beta		f	t	f	{Dodgeball,"Lip Sync",Treds}
k37b2hka8o8r6s2zynex	667275637	mfc	Mackenzie	Copeland	Alpha Tau Omega		t	t	f	{"Educational Speaker",Treds}
am6c0esj8vqdp58xlqd4	393032668	sheston	Samantha	Heston	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
0hxmjanegthf849b31qg	72100061	mninnis	Megan	Innis	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
wh5t94j1zya7qjiox944	363325988	bhinners	Benjamin	Hinners	Alpha Gamma Rho		t	f	f	{"Lip Sync"}
49vbs3dmx8t73xygakyc	987864911	garesche	Thomas	Garesche	Adelante		t	f	f	{"Lip Sync","Educational Speaker"}
rakxgdndc8kn26b1teqq	787791004	empetran	Elizabeth	Petran	Alpha Delta Pi		f	t	f	{"Polar Bear Plunge"}
pyrvzkmogev1743fucji	175034860	nmgraves	Nicole	Graves	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
x6prteshgzi62jbscqva	748868120	zlefeber	Zachary	Lefeber	Delta Lambda Phi		t	t	f	{Volleyball,"Lip Sync","Polar Bear Plunge"}
h5t3kkpp1d2x1feivf4y	535491152	gmwynne	Gary	Wynne	Phi Delta Theta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
1gowwz61wd8hpuzwa1p3	634603994	rlbarker	Rebecca	Barker	Alpha Omicron Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
6hg9fzoq8evohdp1kois	955405451	jlillard	Jordan	Lillard	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
fdge2klcw99n35qiwqlu	917382466	austinj	Austin Cary	Javellana	Phi Delta Theta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
mq99rd2b99xj49jtxfes	240252037	lalunde	Lexi	Lunde	Delta Zeta		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Polar Bear Plunge"}
ut77byzdqmnc2a4s2ovk	621369778	dlance	David	Lanciotti	Sigma Chi		t	t	f	{Dodgeball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
f0edb5azymug80xom84j	315737422	habaccam	Hailie	Baccam	Gamma Phi Beta		f	t	f	{"Karaoke 1st Cuts","Polar Bear Plunge"}
m0ib3ehvu4dz1hzruqfb	932564657	tdiaz	Tulio	Diaz-Barroeta	Adelante		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
uexgp7ql5kk93ur4za1o	36090083	sbaldwin	Sarah	Baldwin	Gamma Phi Beta		f	t	f	{Dodgeball,"Educational Speaker","Polar Bear Plunge"}
0x8c1er0ysoagm3anquk	738705010	achamp96	Alexander	Champagne	Phi Gamma Delta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
mfng1ui8cvlt7j0ptr77	416615199	wporter5	William	Porter	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
trmc6tpsx7653an462bc	446906480	dstreitz	Daniel	Streitz	Delta Chi		t	t	f	{"Lip Sync",Treds,"Polar Bear Plunge"}
1pnttwjcgow5wpjp3ww5	31939908	cadej	Cade	Jones	Pi Kappa Phi		t	t	f	{"Show Me The Greeks",Treds,"Polar Bear Plunge"}
x7oc5b8o66lz7bb6nbq2	811312502	nicolemd	Nicole	Dillenburg	Chi Omega		t	f	f	{"Lip Sync","Educational Speaker"}
l1x1igoxfkln1poanclg	978156236	Cwillson	Cole	Willson	Phi Delta Theta		t	t	f	{Volleyball,"Lip Sync","Educational Speaker"}
y66xjr3gpkm9y310veey	972138187	jordanm	Jordan	Miller	Alpha Phi		t	t	f	{"Lip Sync"}
ub2suo0a3cctmeo535kf	331136822	nathanvh	Nathan	VanHandel	Phi Kappa Theta		t	t	f	{Volleyball,"Lip Sync","Educational Speaker"}
zdg5ejry84xe72x9mcnm	738428691	kbanks	Kali	Banks	Kappa Delta		t	t	f	{Volleyball,"Lip Sync","Educational Speaker"}
admqm8vlhrd1ac6i84hs	635539925	tashab	Tasha	Bourassa	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
fszh91uto8i9cz1mwf4k	192405213	srottman	Samantha	Rottman	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker"}
hmpweiqdxpmoazhwfvts	523691200	astetson	Alexander	Stetson	Phi Kappa Theta		t	t	f	{Dodgeball,"Lip Sync","Educational Speaker"}
nh0fb6mgayubqdrorukr	113720659	jramirez	Jared	Ramirez	Lambda Chi Alpha		t	f	f	{"Lip Sync"}
2inofal3rxldnovgk275	746345600	jrhawken	Jessica	Hawken	Alpha Chi Omega		t	f	f	{"Lip Sync","Educational Speaker"}
0gkwuaq3ykspyw5qnmop	374887541	jfether	Joe	Fetherling	Delta Upsilon		t	f	f	{"Lip Sync"}
pbd5ooio5soggeply8td	747197478	crizo	Chase	Rizo	Phi Kappa Theta		t	f	f	{"Lip Sync"}
5tybl6rjvaw32szpg4fv	140127011	justins9	Justin	Schaubroeck	Phi Kappa Theta		t	f	f	{"Lip Sync","Educational Speaker"}
bbltaxryiph2wch9gfaw	674257608	brandtm	Brandt	Moore	Delta Chi		t	f	f	{"Lip Sync","Educational Speaker"}
net819grjvia8plvzsvf	643075954	jmwinter	Jacob	Winter	Phi Delta Theta		t	f	f	{"Lip Sync","Educational Speaker"}
wovuc3a36d5bmu9w7o42	64905869	gheelan	Gianna	Heelan	Alpha Gamma Delta		t	f	f	{"Lip Sync","Educational Speaker"}
uxaf9obhjsp31eyds15u	490177704	nnelson6	Natalie	Nelson	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker"}
jxmrli4zt8prdy9vk35b	17824823	lbarrick	Lexie	Barrick	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
3je5gwme607xt4hrwskd	198412242	sabramer	Stephanie	Bramer	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker"}
vdnagj8c5r8xfumfg5g9	315076762	jjfronk	Jared	Fronk	Delta Chi		f	t	f	{}
38ln1z64p5wv8in7uur9	219058880	paige	Paige	Mathewson	Alpha Chi Omega		t	t	f	{"Lip Sync"}
ks08vswgm74crccx2qve	226466240	dlmoore	Danielle	Moore	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker"}
jnhmt3j8fks4ef50qebk	314340026	tndecker	Taylor	Decker	Alpha Chi Omega		t	t	f	{"Karaoke 1st Cuts","Lip Sync"}
dbts8cweoe4xq6r1okhe	205313140	kerric	Kerri	Carleton	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
3vfqroq38yr7mrr2ie4y	53990937	mtfred	Michael	Fredrickson	Theta Chi		f	t	f	{"Lip Sync"}
b6yqq3mg88i1s720xnek	335554240	jboike	Jack	Boike	Theta Chi		f	t	f	{Dodgeball,"Lip Sync"}
uxso4jb3pq4pp6k1bmpb	603003428	kmetzger	Kylee	Metzger	Delta Delta Delta		t	t	f	{Treds}
zdmey6ky8cu4vjrk8zl0	310529250	ktmac	Katherine	McDonald	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker"}
qou50k57hjix6s15l82r	807516734	jninman	Justin	Inman	Lambda Chi Alpha		t	f	f	{"Lip Sync","Educational Speaker"}
bhwr1arn1h9jlrm24ewb	888820969	cjrueb	Charlie	Rueb	Sigma Pi		f	f	f	{"Educational Speaker"}
1yx7opwx0h3ktei169wq	534902408	avshort	Alexander	Short	Phi Kappa Psi		f	f	f	{"Educational Speaker"}
junfgrbtohovgvkco3x3	659803168	jlriley	Joseph	Riley	Adelante		t	f	f	{"Lip Sync","Educational Speaker"}
9yt36b279fnrst9uc7uk	787131345	sadeszko	Shannon	Adeszko	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
3sbmygeq84w4qva40rsj	846142297	mshowers	Megan	Showers	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
0ezz7403kdh6wjm7dj4k	989846895	hgehring	Hannah	Gehring	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
92iyuv3oyjn6rrgiydl4	191160052	dnewman	Domonique	Newman	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
5y6i7lts92ib2geh3a6b	73510450	jedillon	Joseph	Dillon	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Polar Bear Plunge"}
o0jblwob5ifpyxb9uzjj	779606856	nfhickey	Nolan	Hickey	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
dgjaddf6h1go1tnp44u2	495971497	jd21	James	Daugherty	Chi Phi		t	t	f	{Volleyball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
wcug33lzvwrco2st3n9r	9549564	jdjost	Jacob	Jost	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
uj8xbfyhe71bej74lhz7	986078093	tchoudek	Theodore	Choudek	Sigma Phi Epsilon		t	t	f	{"Lip Sync",Treds,"Polar Bear Plunge"}
3kr45lrgd3vvt2rfv0qz	361345020	alicial	Alicia	LaTraille	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
1rt69wd44fbhp05v9j9v	227248054	geneser	Elizabeth	Geneser	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
zxb1odfr8ncyogpaxct1	182278096	mlance	Michael	Lanciotti	Sigma Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
kki4va8u7v6de26lcqrh	780883103	jtroane	Jeffrey	Roane	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Polar Bear Plunge"}
qhg5jvmzpl38f4e4fyik	247372149	isabel	Isabel	Miller	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
ge4yszid6mci0pffja2d	61465427	cnolson	Connor	Olson	Delta Upsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
v6i9il4t523cey6wkg6g	85946861	adbaker1	Adam	Baker	Alpha Gamma Rho		t	t	f	{"Lip Sync",Broomball}
85rbtnwpxmj0erypg6jc	64512448	ehansen	Ethan	Hansen	Beta Sigma Psi		t	f	f	{"Lip Sync","Educational Speaker"}
zlv2tx2081oyetkf7tvq	872680809	mpech	Mallory	Pech	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
xemk1pnfdnt1y6nqq38c	930193264	cbracker	Cade	Bracker	Alpha Gamma Rho		t	t	f	{"Lip Sync"}
fhl2dafxnwfh3qyi88bb	133281148	jonr	Jon	Roettger	Alpha Gamma Rho		t	t	f	{"Lip Sync","Educational Speaker"}
3xtnsmyq3utq1pny34r7	871044198	rdsavage	Rebecca	Savage	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker"}
e1m68a9qztdt93wvmtj0	954744791	mangskau	Nicholas	Mangskau	Pi Kappa Alpha		f	t	f	{"Educational Speaker"}
j6bl3r83djxpp918yqmf	114726635	megano	Megan	O'Donnell	Alpha Sigma Kappa		f	t	f	{Dodgeball,"Show Me The Greeks","Educational Speaker"}
qzx8wcfmxus41hla9mmu	606808202	mtlane	Megan	Lane	Kappa Delta		f	f	f	{"Educational Speaker"}
unk3rkf7bgzbpf90t1k0	128158051	evanhorn	Elias	Vanhorn	Theta Chi		f	f	f	{"Educational Speaker"}
wk3gk8pbtjih7vm334j7	467314848	jtzabel	Joshua	Zabel	Adelante		f	f	f	{"Educational Speaker"}
c0ayo693ek3c7i5n6w2c	961075163	abrantes	Manuel	Abrantes	Sigma Pi		t	f	f	{"Educational Speaker","Lip Sync"}
aat3t4psnnpiy3pq1boc	190853687	mefox	Megan	Fox	Alpha Chi Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
9plh3a7fsf7ja6zfbiq9	666778141	razimmer	Rachel	Zimmer	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
suckxphycvx04flrvnga	799890091	mrmeyer	Morgan	Meyer	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
oqj3mc51zhant8javfpa	207660485	nmleslie	Nicholas	Leslie	Sigma Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
uf8uv68p34z6nhv7zb6q	151993842	taytn	Tayt	Niedernhofer	Sigma Phi Epsilon		t	t	f	{Volleyball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
80srad9z6kkcz0ndv4jw	467818386	sbrunner	Sarah	Brunner	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
4oc3peuzdeuzk5t5ovfp	646666092	mbplate	McKenna	Plate	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
7yg1bdidmay0651ava4b	814456643	tfrankel	Teresa	Frankel	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
5neywlzxq0qj87x2u0p1	545618073	kahrend	Kylie	Ahrendsen	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
csal66qox9zb44dqjufh	897210314	karamath	Kara	Matheson	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
8nj0fehrulw21aqcrwhn	562876334	narupp	Nathan	Rupprecht	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
dgokaikkxd87ed66sky5	605760179	morganlw	Morgan	Wisnieski	Delta Zeta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ac6auw03a0j2mn1mw7g2	772907159	colec1	Cole	Carpenter	Phi Kappa Psi		f	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
zj8p3326dbvab5tpwyej	235511304	nml	Nicole	Lombardo	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
xnqkopz7efxlq22gb5y8	774872126	ntimmons	Nathan	Timmons	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
aq6o38vrv0hmdd41a5cq	222560362	aryoung	Abigail	Young	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
nbm5jjenq4ug5hozc8wa	240306143	kwillis7	Kyle	Willis	Sigma Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
4g903iez7oq7p7q6y0bp	527225730	chris026	Michael	Christoff	Triangle		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
czvn4nc8dx3ql0tv50cn	788311559	goldberg	Kylie	Goldberg	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
iibtl9q9l0a9pxwicz6u	855290436	sanchezs	Samantha	Sanchez	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
i1hjjbuepj2uhpux8ktz	271099861	bethanyz	Bethany	Zimmerman	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
55g4ot0f7b2vek2iq5nc	406217844	aafaber	Allison	Faber	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
ozg406nf4r5hjsdqtsg2	88426366	nleitner	Nicole	Leitner	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
rl2zkpiwtjf6lt0gkcjx	335895560	jkz	Jennifer	Zurlinden	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
synv6uvnnq443r76vwn1	532800296	cierram	Cierra	Michael	Delta Zeta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
a1ggpog6topngbou384c	983701719	jsf1394	Joseph	Fisher	Alpha Kappa Lambda		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
2s6a08xty1nxh5i6iqby	110323213	granta93	Grant	Albansoder	ACACIA		t	t	f	{"Lip Sync","Polar Bear Plunge"}
4ixq3pa065diqpn1dnqw	127394283	cwittern	Cole	Wittern	Sigma Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
r30kyljft484e9d7ixtz	151060910	mlbowman	Morgan	Bowman	Delta Zeta		f	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
sllrytp0dnwxn96bbhd6	466564130	Mefaust	Madeline	Faust	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
uyr65en3m99xswws7chr	330349019	pschuler	Paige	Schuler	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
k5eo6kpg0jyi9zwlmb0r	490584110	brennas1	Brenna	Steffens	Delta Zeta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
f23qdzekpbj2z8yj16qz	30954952	eharvey	Eliza	Harvey	Kappa Alpha Theta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
vids24888v8kohuscakn	135625651	russellr	Russell	Robinson	Sigma Chi		t	f	f	{"Educational Speaker"}
90771u7omoumwn21sf1f	787451665	hagan	Hagan	Willis	Alpha Gamma Rho		t	t	f	{"Lip Sync","Educational Speaker"}
08a5vwmxfn87wu10fn1f	984529566	zjr	Zachary	Roberts	Sigma Chi		t	f	f	{"Educational Speaker","Lip Sync"}
16yi7b7xgi1aihpcpvpn	764562799	jamesh1	James	Hildreth	Alpha Tau Omega		t	f	f	{"Lip Sync","Educational Speaker"}
0rhg8kd2ufumi437ctyu	230835605	ceh1	Christine	Hamilton	Alpha Chi Omega		t	f	f	{"Lip Sync","Educational Speaker"}
p0wt62o8nk3w4l9eojxx	698803122	qgmill	Quincy	Miller	Sigma Pi		t	f	f	{"Educational Speaker","Lip Sync"}
o1nzq9d6mhk6gdaz20r5	809755963	brockf	Brock	Fischer	Sigma Pi		f	t	f	{"Educational Speaker","Lip Sync"}
rmyls1laqfcfa9rpgzn0	308060753	stinsman	Spencer	Tinsman	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync"}
rhy433m499otkbvdnajh	288434169	alharris	Ashley	Harris	Alpha Sigma Kappa		f	t	f	{"Educational Speaker"}
q7rxlnpetjyo853c3zi4	656059404	mariaa	Maria	Archevald-Cansobre	Delta Zeta		f	t	f	{"Educational Speaker"}
x0eib4q5mbg2xz3suuuz	319617298	ago2196	Anna	Olson	Delta Zeta		t	t	f	{"Educational Speaker"}
0ogdcpoek66jx29hqp7w	707169463	kelseyb3	Kelsey	Bruggeman	Kappa Alpha Theta		f	t	f	{"Educational Speaker"}
37aisg0emnbn3zftb1lm	490890416	ashannen	Ashley	Hannen	Kappa Alpha Theta		f	t	f	{"Educational Speaker"}
a0yaw5dzq9opacgiy6hc	917433541	kdossler	Kevin	Ossler	Sigma Chi		f	t	f	{"Educational Speaker","Lip Sync"}
qqee7voi0igjahojf775	834518691	lsvespa	Lauren	Vespa	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
n5d2xroo03juhlb091we	425746341	mlthomp	Mareika	Thompson	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
p49cnnukpw7imobprbkg	17779831	bmwinter	Bradley	Winter	Sigma Pi		f	f	f	{"Educational Speaker"}
umlg4jy8ns80xh0zz1a9	335213879	estearn	Emily	Stearney	Alpha Phi		t	t	f	{"Show Me The Greeks","Lip Sync","Educational Speaker"}
mynz7yj10yg0h5qej629	842989176	cfloss	Caleb	Floss	Phi Delta Theta		f	f	f	{"Educational Speaker"}
g12tqj5cxeivru31umph	984332373	stephr	Stephanie	Richards	Kappa Delta		f	f	f	{"Educational Speaker"}
5mz2ue9w3fkoa7en9q0g	967878941	szalatr	Ryan	Szalat	Phi Delta Theta		f	f	f	{"Educational Speaker"}
ntrwmhearggsv9al7lur	374891517	andrews	Natalee	Andrews	Kappa Delta		f	f	f	{"Educational Speaker"}
myyw7s8au3r9ihyiqzw0	207529322	cenowak	Caroline	Nowak	Kappa Delta		f	f	f	{"Educational Speaker"}
jsxjpnp2rx50hbbk9g75	899401503	bkjones	Brianna	Jones	Kappa Delta		f	f	f	{"Educational Speaker"}
nk51vp9h79hvuzadagbk	774092347	marlim	Marli	Markovitz	Kappa Delta		f	f	f	{"Educational Speaker"}
zuwrkd6qf38sm4oeo86f	901811049	pkwitt	Paisley	Witt	Kappa Delta		f	f	f	{"Educational Speaker"}
fm50s2i0r3xyimg4d75p	780227448	fjelstad	Katherine	Fjelstad	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
22pjwkt6nvqi5glnr5kj	342194877	stsuckow	Spencer	Suckow	Alpha Tau Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
i9owa20mxg7gfu9c52tn	44083063	ekachel	Emma	Kachelmeyer	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
jpm9hm6j6zu5v2op08f8	272881621	mmarcard	Matthew	Marcard	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
3xdh24svrf9mvg720uol	695913239	cranfill	Jamie	Cranfill	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
iiaqphb11d32nkjlxbhe	694733039	erik	Erik	Kreissler	Sigma Pi		f	t	f	{Volleyball,"Educational Speaker",Treds,"Polar Bear Plunge"}
peo3rqw1jzbwhvolzyjv	669618970	kjtwedt	Katie	Twedt	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
2jfk3zn3uiqbx273sd76	617861244	nwehling	Nicole	Wehling	Delta Delta Delta		f	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
tci7czikbyn7i1sjm6ao	461618185	rakenkel	Rachel	Kenkel	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
n7k9b1qdtvrm8pnc8oga	880215336	culbrich	Claire	Ulbrich	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
mjbd0r7wvwlxrahnhdi1	776259484	stnicol	Spencer	Nicol	Chi Phi		t	t	f	{Volleyball,"Show Me The Greeks","Lip Sync","Educational Speaker","Polar Bear Plunge"}
isv915q85034z8th62aj	832639831	maddie16	Madeline	Colosimo	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
q7vh01lcpvht52e0emyx	386542192	Mrfreda	Michael	Freda	Sigma Chi		t	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
6hgbzhdc0918n8sj01kg	441793380	jre96	Jamie	Elleraas	Delta Zeta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
pwghuuck8xkzeyuvsinc	722367713	greiner1	Callie	Greiner	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
6mzj3j2hqviyi4obwpsa	269887618	ashtonp	Ashton	Pederson	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
ckao14jwdc5uvx5wpfxp	979424475	Jscooper	Jonah	Cooper	Adelante		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
amjxa9xvitqi4b93773q	572506935	karlye	Karlye	Vallafskey	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
40d9ghifdlkc4h2157s8	552946423	oalesher	Ohara	Lesher	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
y0uvg6d5yv5ceqn6btv2	141789648	dschau	Dallas	Schau	Kappa Alpha Theta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
b6dh3rk9oipgsmqnihlf	712247580	bbunting	Braden	Bunting	Alpha Kappa Lambda		f	t	f	{Dodgeball,"Educational Speaker","Polar Bear Plunge",Broomball}
c8g4q3wt8v7u8j69a39q	569192624	tmmaier	Tiana	Maier	Kappa Delta		f	t	f	{"Educational Speaker"}
knjs5lrp8tkh9w7feyj0	693416759	eksucich	Emilie	Sucich	Kappa Delta		t	f	f	{"Educational Speaker"}
v74aw0ca9xgwexa468th	819565747	stockall	Allison	Stockfleth	Alpha Phi		t	t	f	{"Educational Speaker"}
0jcb56m6v3kxj56wt97l	272355107	voelkers	Alexandra	Voelkers	Alpha Phi		t	t	f	{"Educational Speaker"}
amhq2utk7v6dtf8v0xjz	890948058	jkwall68	Jacob	Kindwall	ACACIA		f	t	f	{"Educational Speaker"}
xn5izq1gwf99y5wy0krr	525597096	kbaxman	Kirby	Axman	Phi Delta Theta		t	f	f	{"Lip Sync","Educational Speaker"}
d77vnmvdkqs2gx7y87pc	315056742	orewiler	Savannah	Orewiler	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker"}
5qguu3d5zofsdg8a51p9	337959651	wiersema	Maddison	Wiersema	Alpha Sigma Kappa		f	t	f	{"Educational Speaker"}
1mc0nqgusjg1ipzjj3vf	527566067	ldd	Logan	Driscoll	Phi Delta Theta		f	t	f	{"Educational Speaker"}
hi1sk7um6yymh152b5b7	872789949	shaes	Shae	Smith	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync"}
tbu935rxz5g3fxpn4fn3	714612899	pdubs70	Preston	Waymire	ACACIA		f	t	f	{"Educational Speaker"}
7iro1gd5k9e472ypjcwh	188038851	kjsissel	Kelsey	Sissel	Kappa Alpha Theta		f	t	f	{"Educational Speaker"}
bqzv6mhaxznbmwxfuq3c	719713018	pstrait	Patrick	Strait	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Educational Speaker"}
3x8gch9v4erhc7a21v3p	201313112	abnow	Abigayle	Nowakowski	Kappa Delta		f	f	f	{"Educational Speaker"}
0s331pg83yzhtztbfncl	405479106	mdiambri	Michael	Diambri	Phi Delta Theta		f	f	f	{"Educational Speaker"}
5pg2ckfxf4au95pjl4hs	158331173	ashleyf	Ashley	Fuerhoff	Kappa Delta		f	f	f	{"Educational Speaker"}
oyechru49a8eebeepx42	987193231	abpolk	Alexandra	Polk	Kappa Delta		f	f	f	{"Educational Speaker"}
tg0yqdrqkje3wu75fa73	173180007	kkeating	Katelyn	Keating	Kappa Delta		f	f	f	{"Educational Speaker"}
ucen8tgi1e39kvndd8xi	226446220	sek	Sarah	Kornovich	Kappa Delta		f	f	f	{"Educational Speaker"}
7uo3pg8vx1zkjrcqsj28	404163760	mnv16	Madeline	Villhauer	Kappa Delta		f	f	f	{"Educational Speaker"}
xrk9mem8olkg7yb1y011	273182910	portwine	Kelsey	Portwine	Kappa Delta		f	f	f	{"Educational Speaker"}
xcaihv7h8o9s7y0tmai1	631948317	sthenn	Shane	Hennessey	Sigma Phi Epsilon		f	f	f	{"Educational Speaker"}
amgzd22dx19zr229nhjh	236264028	aallen	Alexi	Allen	Alpha Chi Omega		f	f	f	{"Educational Speaker"}
6l9dog6hjgdpld5vq7vw	82034977	travtroe	Travis	Troendle	FarmHouse		f	f	f	{"Educational Speaker"}
bby1ef10twqzhhepjdsd	352492140	npigott	Nicholas	Pigott	Kappa Sigma		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Educational Speaker","Karaoke 2nd Cuts"}
f88pxvcse5l3r7ze17o8	439577165	matthew2	Matthew	Hoefling	Kappa Sigma		f	f	f	{"Educational Speaker"}
9b9zhbh4bhiq5hbbtbaz	864952116	kdrobuck	Kieran	Robuck	Kappa Sigma		f	f	f	{"Educational Speaker"}
x50rmf2kg00nij6crm0h	424355960	dfire	Derek	Feiereisel	Alpha Tau Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
itgqvpvilf1w2ecobrf5	559903364	alexisr	Alexis	Ruscheinski	Alpha Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
m1wxky1mb342plxtuijl	922600679	ashleym2	Ashley	Meiners	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
qr3w6lu790wgr38cn2ck	180597441	aer	Amy	Raymond	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
py75tu59ulpgpaq26q5t	806219447	gottlieb	Isabel	Gottlieb	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
pkhl5jy2sp11083lou09	796068493	celestes	Celeste	Swanson	Alpha Delta Pi		f	t	f	{Volleyball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
lrr9owic1rj9owv7o8lo	837384572	ksale100	Katherine	Sale	Alpha Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
fzi0crtfoburv9sc1kht	419712317	hbranson	Hunter	Branson	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
wdi86xjrhobqhgnyqasv	95369307	annabelc	Annabel	Carlson	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
0ticm5np5w8y7m2nbv3o	419665275	ktrice	Karen	Rice	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
nsre2mw1826d37qm93jw	306738503	tarynb	Taryn	Buennemeyer	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
nq7ta0q2dy0l968locvp	88189137	knbotkin	Kaitlynn	Botkin	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
d8ghl96x0sg1nkzpyom2	75648602	acbeaton	Austin	Beaton	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
3x39k1wygkexc05m8ly4	815013223	ajgaff	Antoine	Gaffney	Phi Kappa Psi		f	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
l5w0z7oo97hhbffn0kn1	920941021	madisonf	Madison	Ferguson	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
6codro3vd71k0laz6eaa	284053799	yrohan	Rohan	Yadlapati	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
y23viwj8ld7ue158dhvu	829902073	jstauf20	Joseph	Stauffer	Sigma Chi		f	t	f	{"Karaoke 1st Cuts","Educational Speaker","Lip Sync","Polar Bear Plunge"}
zi9pzagzae8mnnbsfaci	106302224	meoster	Madison	Oster	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
bfbzs6m5oqkfbb4hyx40	959196262	andjelam	Andjela	Mandic	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
yhxa1gpao39q1ksxbljm	142435317	alexalw	Alexa	Weber	Alpha Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
aq2fscwrychpvn1527e6	389232844	srsangem	Sushanth	Sangem	Alpha Sigma Phi		f	f	f	{"Educational Speaker"}
aclcetqr5v2k6scefzbl	282530248	gadkins	Gregory	Adkins	Delta Chi		f	f	f	{"Educational Speaker"}
503gdbocddmxs0l9j1af	906168299	iebirch	Isabella	Birch	Alpha Phi		t	f	f	{"Educational Speaker"}
r9xh3rgledbldbgb5kpo	943606664	bshim	Benjamin	Shimota	Sigma Phi Epsilon		t	f	f	{"Educational Speaker"}
d28uhq6zwt71u846rmk4	288448160	zbeek	Zachariah	Beek	Sigma Phi Epsilon		f	t	f	{"Educational Speaker"}
9syz5paoujzpf5vdptti	653274646	kfisher5	Katherine	Fisher	Alpha Omicron Pi		t	f	f	{"Educational Speaker"}
i8wosnioc4buxo6wuonj	969587619	ajaspers	Austin	Jaspers	Tau Kappa Epsilon		t	t	f	{"Show Me The Greeks","Educational Speaker"}
be8klp7hzsxr48b9yz2f	968235296	encory	Emily	Cory	Kappa Delta		t	f	f	{"Educational Speaker"}
eotn3h8v64iry03cpcxq	753935210	kkueny	Karrigan	Kueny	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
10tnx5ibnzpwmldrhj2u	862702841	koconnor	Kelly	O'Connor	Kappa Delta		f	t	f	{"Educational Speaker"}
n2w4b2pksycsjexebpdu	275454367	audreyt	Audrey	Tamulewicz	Pi Beta Phi		f	t	f	{"Educational Speaker"}
ynf5d6pl15c2cfe6t7rc	399251853	ahollo17	Amanda	Holloway	Alpha Delta Pi		f	t	f	{"Educational Speaker"}
lhc7udn43dt3797tq930	155250095	afrazee	Anastasia	Frazee	Alpha Delta Pi		f	t	f	{"Educational Speaker"}
vsh7fcrl4129ae15xw9i	920849609	flessner	Allie	Flessner	Alpha Gamma Delta		f	f	f	{"Educational Speaker"}
jpex18shfsknw546aone	981142183	tgp2015	Thomas	Peterson	Kappa Sigma		t	f	f	{"Lip Sync","Educational Speaker"}
4xr0gln4aqj8eggoraem	838511738	amandaj	Amanda	Johnson	Sigma Kappa		f	f	f	{"Educational Speaker"}
nq61byhlomb8z6er8r4d	3153177	sglaser3	Samantha	Glaser	Chi Omega		f	f	f	{"Educational Speaker"}
pjj0gpb8aplngu768puo	419041647	atnavas	Adriana	Navas	Chi Omega		f	f	f	{"Educational Speaker"}
1yv3olnq23bhyg8ge6vi	333568263	jviers1	Jordan	Viers	Phi Kappa Theta		f	f	f	{"Educational Speaker"}
cxafid5cigniezqgatxc	284003720	jphammen	Justin	Hammen	FarmHouse		f	t	f	{"Educational Speaker"}
dlh2u8ekwo7v3q7me3l1	336033727	jayhayes	William	Hayes	Lambda Chi Alpha		t	f	f	{"Lip Sync","Educational Speaker"}
n1394nlp124ra9fr7qnt	403170768	sbbetts	Spencer	Betts	Beta Sigma Psi		t	f	f	{"Lip Sync","Educational Speaker"}
qz3b5kz95u0ntnya4bv9	705739059	sgflumer	Samuel	Flumerfelt	Phi Kappa Psi		t	f	f	{"Lip Sync","Educational Speaker"}
vmt3owxk61qdf8b5iqxi	753032304	gmseidel	Grace	Seidel	Sigma Kappa		f	t	f	{"Educational Speaker"}
lmbve0pa3rof26robep7	650884274	bnbarber	Brenna	Barber	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
m2mqnskv9h5ppy907r7t	581586005	hebrowne	Hallie	Browne	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
n3i0xtbdm8i7af7mzkoc	877563687	datarte	Daniel	Tarte	FarmHouse		f	t	f	{"Karaoke 1st Cuts","Educational Speaker","Karaoke 2nd Cuts","Polar Bear Plunge"}
l5qk2a0ni0ypjnhr3xpo	147925807	glehmann	Grant	Lehmann	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
ja5txchid3mkip3vh4lm	462098637	ggathman	Garrett	Gathman	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
wv90xjg5cwpccqsg1qvt	266634392	rayy	Raymond	Washington	Sigma Phi Epsilon		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
ls1rx7aakwp72o2nh0e5	4480503	hrs	Hannah	Scharenbroch	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
cu18gn5pt2cfm18ym2yk	92041950	nbegley	Nicholas	Begley	Sigma Phi Epsilon		t	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
dae9zqsr6umrxh5bsqzw	968143200	elliott	Elizabeth	Elliott	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
4rgcd5ktr6nxm5d8dfie	423138753	jdb1	Joshua	Bohnstengel	Sigma Phi Epsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
lbclosdp4pum2zpcynyb	792929158	thankins	Taylor	Hankins	Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
vpnsd0c5yhjd4g45xqax	297278017	jhv	Joseph	Verschoor	Delta Upsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
aklq44okqlbnj9pkng5p	717833116	cyoung	Courtney	Young	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
a6zyuow35shu3kxmlgog	724389694	mparis	Mackenzie	Paris	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
u5hnzxcr5dup4ma1fz0t	916620705	avincent	Allison	Vincent	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
lrdjgw7tnrj8lbsoz5g9	621297677	isidorap	Isidora	Passalacqua	Gamma Phi Beta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ppb604y1lyylh6jng0t4	123107985	asunken	Alyssa	Sunken	Alpha Omicron Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
mgq8xvmjiuxmcutb9t7u	317872583	cgsass	Caroline	Sass	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
da7ghqv05s7ep8qd0oi7	749814086	hkuta	Hunter	Kuta	Chi Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
53g3lr13zx74t5d0al5g	570575029	jschutte	Jessica	Schutte	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
1ppcyvkvd9srwg8u51nl	828550723	jlago	Justin	Lagomarcino	FarmHouse		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
5klee2gp47xrg5yje4i7	735877210	jluedtke	Joseph	Luedtke	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
g10d54f5k5uheou2dsdy	79967923	cox	Mark	Cox	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
40wozvclay5kfoyhgmpw	864220389	laurencz	Lauren	Czarnetzki	Gamma Phi Beta		f	t	f	{"Educational Speaker"}
y8gcd0u249qebbszeccz	360333974	ebarrett	Emily	Barrett	Phi Beta Chi		f	t	f	{"Educational Speaker"}
htob8gxqzzrcbryyqvvj	432557245	aoneill	Aaron	O'Neill	Lambda Chi Alpha		t	t	f	{"Lip Sync","Educational Speaker"}
c0a60hcwhbebwybfyc5x	736445710	danas	Dana	Schultz	Sigma Kappa		t	f	f	{"Educational Speaker","Lip Sync"}
ix4iesqhy9ljzorlzzbw	660973313	mreitzel	Matthew	Reitzel	Delta Chi		t	t	f	{Dodgeball,"Lip Sync","Educational Speaker"}
9gxa9d80ej3wrscmnfzz	127525430	kates	Kate	Scheeler	Delta Delta Delta		t	f	f	{"Lip Sync","Educational Speaker"}
gzdeky773w7x0th0radp	538554041	steffen2	Jennifer	Steffen	Sigma Kappa		t	f	f	{"Educational Speaker"}
c714tzizvq0oik1cxuat	166481335	allach	Allison	Achenbaugh	Sigma Kappa		f	t	f	{Volleyball,"Educational Speaker"}
l0vvbo6gmositwsf6ren	282116875	ryanbush	John	Bush	Alpha Sigma Phi		f	t	f	{"Educational Speaker"}
2uaj98dowl9z3mmn91i1	10843833	carliec	Carlie	Christianson	Pi Beta Phi		t	t	f	{"Lip Sync","Educational Speaker",Treds}
20owhoccvz6ajwxcrnsl	149243094	ljcarter	Lauren	Carter	Alpha Gamma Delta		f	t	f	{"Educational Speaker"}
zccssmmxoeb08ix5oo11	564392829	netzel	Nicholas	Etzel	Delta Sigma Phi		f	t	f	{Dodgeball,"Show Me The Greeks","Educational Speaker"}
jk7d0oq2dqxmo19yotbg	166174028	mclaeys	Mara	Claeys	Kappa Kappa Gamma		f	f	f	{"Educational Speaker"}
wq2f07ua46135hkyfjv1	50631610	benwj	Benjamin	Jacobsen	Alpha Gamma Rho		f	f	f	{"Educational Speaker"}
9k23jgfnknpss3d2a8io	922441520	ztraeger	Zachary	Traeger	Alpha Sigma Phi		f	t	f	{"Educational Speaker",Treds,Basketball}
9neg8br5s5jm46c2u7p4	68248204	sdj	Samuel	Jorgensen	Tau Kappa Epsilon		f	f	f	{"Educational Speaker"}
34z9iayizbsmk4cbydmu	979941986	aklong	Addison	Long	Chi Omega		f	t	f	{"Educational Speaker",Treds}
1owngho9n9dhyb2l3j56	229774545	lniebuhr	Lyndsey	Niebuhr	Kappa Delta		f	f	f	{"Educational Speaker"}
bp0t7wsx4vbf62f5p62n	914857944	andrewgs	Andrew	Sorensen	Phi Delta Theta		f	f	f	{"Educational Speaker"}
1ru1tuuklr2reni9m2z9	260108849	mrbiehl	Mitchell	Biehl	Triangle		f	f	f	{"Educational Speaker"}
h7cqw2j6e94tbadr74x8	37669632	abbiel	Abbie	Latterell	Pi Beta Phi		f	f	f	{"Educational Speaker"}
mkydhfyk3gy8mcvxco6y	462098650	mpaulson	Mackenzie	Paulson	Kappa Kappa Gamma		t	f	f	{"Educational Speaker"}
xcoyjc8rdqshyqkhhxcc	69660591	kmkent	Kyle	Kent	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
03plkw3goxzwq1i5l1iw	858262426	btheile	Ben	Theile	Phi Gamma Delta		t	f	f	{"Educational Speaker","Lip Sync"}
dx5d8jof1prqbjki6und	244453209	adeutsch	Anne	Deutsch	Alpha Delta Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
w8lame18ze4flrj1mynt	892177314	cJewel12	Cayla	Garcia	Sigma Kappa		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
0w41gvcg8lm4197f2a39	688227568	afrancke	Alexandra	Francke	Sigma Kappa		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
wikv4mtrpj8y7gbxge8c	589769180	tshimota	Taylor	Shimota	Delta Delta Delta		t	t	f	{"Educational Speaker",Broomball}
41wnw4ia4x0m2wmifdwh	393569176	ehenry	Eric	Henry	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
j8vj80nxx1y9b0uz1jjc	741510793	sjbenson	Samantha	Benson	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
imu5imvdu6e2bjd82hdo	944454511	ttlong	Tyler	Long	Kappa Sigma		f	t	f	{Dodgeball,Volleyball,"Educational Speaker","Polar Bear Plunge"}
7n4ih31anla7mxu31evt	419409991	wardb	Brandon	Ward	Sigma Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
0495qon9ldhrr1yy75uh	736715980	lpolzin	Luke	Polzin	Kappa Sigma		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
23v05ol2fc88b1fai7ue	903120254	nbnugent	Nick	Nugent	Delta Upsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
blnj27p880e1fvveimgc	276899643	vzhark	Vasillaq	Zharkalli	Theta Delta Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
19bj9whvo78b57vcnnk8	344027740	jabehnke	Jake	Behnke	Delta Upsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
1s2q18s7a8ceo8g6q2b2	554610084	ntopping	Nicholas	Topping	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
dey3iiued6ps6shjczh8	576200650	dwcooke	David	Cooke	Lambda Chi Alpha		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
t0bz7hzswponxbl6isrf	714793111	kkriener	Kali	Kriener	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
m7yk1ser3mhmw605seax	961048116	annakmo	Anna	Mokricky	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
xi8idiq9wyghs2tde20m	630019425	joy202	James	Yarrow-Jenkins	Triangle		t	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
xzfst2y70e9p7gfbg8y3	316970718	blaker1	Blake	Rosenquist	Phi Gamma Delta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
effesr6tu3g8xtrz6uvh	956543611	madeller	Megan	Deller	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
6kr76z2tctkkeid9d8el	568652104	jkatamay	Jesse	Katamay	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
8vuimkbmna51prgmqu50	323490167	mjwelter	Matthew	Welter	FarmHouse		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Educational Speaker","Karaoke 2nd Cuts","Polar Bear Plunge",Broomball}
l204wd5nmk83wjqxi5s8	857907050	wes	Wesley	Ruby	Theta Delta Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
kbl4iw051kn8yydgsvg1	402677307	craymond	Christina	Raymond	Alpha Gamma Delta		t	f	f	{"Lip Sync","Educational Speaker"}
4fqeyx6ko6pwcm3fj791	958645688	jjordan	John	Jordan	Phi Kappa Theta		t	t	f	{"Lip Sync","Educational Speaker","Trivia Blast"}
43vtgakqb0a7ai866qgm	283021768	kaweier1	Kalason	Weier	Kappa Kappa Gamma		t	f	f	{"Educational Speaker"}
t29zezgot93enzllh4n3	180531456	keprice	Katlyn	Price	Sigma Kappa		t	f	f	{"Educational Speaker"}
niweazf351weubroty49	889080554	smbott	Shayna	Bott	Alpha Gamma Delta		t	f	f	{"Educational Speaker"}
dbdz9si6o11d5khxz3s7	929331403	kylebav	Kyle	Bavender	Tau Kappa Epsilon		t	f	f	{"Educational Speaker"}
6obacbgzz1pzqw9et5f9	880018199	mitilier	Alexis	Mitilier	Kappa Kappa Gamma		t	t	f	{"Educational Speaker","Lip Sync"}
1l22qovxqlxaz6x4qo4m	403768365	nperkins	Nathaniel	Perkins	Triangle		f	t	f	{"Educational Speaker"}
pijnfsn7fd4pgbvvu538	721799103	bmavery	Brogan	Avery	Alpha Gamma Delta		f	t	f	{"Educational Speaker"}
8jr2c2tnbvsd6idnmk21	631149519	jcacton	Jeffrey	Acton	Alpha Gamma Rho		f	t	f	{"Karaoke 1st Cuts","Educational Speaker"}
k830npyb6h6rg1zodk1f	262061800	claland	Cecilia	Laland	Sigma Kappa		f	t	f	{"Educational Speaker"}
lwbiv31t2zquuehld1ub	802283482	mjm	Megan	McDonald	Alpha Gamma Delta		f	t	f	{"Educational Speaker"}
grckdtfgqn5lwrlzg7ew	817519774	devineb	Brandon	Devine	Phi Kappa Theta		f	t	f	{"Educational Speaker"}
8tlexz8k2noazi82k5jr	399066668	rbrown96	Rachel	Brown	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker"}
g727t705agu2ir15edyf	683674992	willhyde	William	Hyde	Delta Tau Delta		f	t	f	{"Educational Speaker"}
uuhi6px5ry773ijcescv	373170871	ddruss	Daniel	Russell	Delta Sigma Phi		f	t	f	{"Educational Speaker","Lip Sync"}
cc4bjixqts6fntn7abba	628758130	cecahill	Cassandra	Cahill	Delta Delta Delta		f	f	f	{"Educational Speaker"}
ephj28n6qnwnmjnuo7w9	826261461	kasorley	Katilyn	Sorley	Alpha Omicron Pi		f	f	f	{"Educational Speaker"}
4wsfndyqmovy3eslz70b	904714828	hwhite	Hayley	White	Gamma Phi Beta		f	f	f	{"Educational Speaker"}
2ecm2gn7fijeo9o9ugqz	611211601	howen	Hunter	Owen	Phi Gamma Delta		f	f	f	{"Educational Speaker"}
n05ysouec17qkqpbx1ad	490497027	domc76	Dominic	Corrado	Phi Kappa Psi		f	f	f	{"Educational Speaker"}
3z5v2t9aiths06uw89mw	285355070	ekoppang	Emily	Koppang	Gamma Phi Beta		f	f	f	{"Educational Speaker"}
82l1651ybgwx8pihbsij	821079259	echohman	Erin	Hohman	Chi Omega		f	f	f	{"Educational Speaker"}
b4vrpxel9xxnsqoa0yy6	34796794	perrelet	Amy	Perrelet	Alpha Sigma Kappa		f	f	f	{"Educational Speaker"}
zwng6foizc7xlnalfpyv	165750616	iabrsc	Ian	Schwartz	Tau Kappa Epsilon		f	f	f	{"Educational Speaker"}
ge67qtovd04zkx82f6cv	187089903	aljonbac	Aljon Rey	Bacdayan	Theta Chi		t	f	f	{"Educational Speaker","Lip Sync"}
784g1xfk13eicn0bcvt1	159259100	akron	Alison	Kron	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
atlf5gy3u8vzhh8v9fkg	808677895	cecarney	Clare	Carney	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
x4n20z2hif61vvsvoe6l	268169925	gmmarek	Grant	Marek	Tau Kappa Epsilon		t	f	f	{"Educational Speaker","Lip Sync"}
lpbac7r7n2mr3ihml8es	333382089	dehardy	Daly	Hardy	Kappa Kappa Gamma		t	f	f	{"Educational Speaker","Lip Sync"}
xpliet1e4btmc8c7usm3	905656787	jmartin2	Jessica	Martin	Kappa Kappa Gamma		t	f	f	{"Educational Speaker","Lip Sync"}
5q2y7vfddfep1lu1matu	113407294	caitlin1	Caitlin	Sullivan	Alpha Sigma Kappa		f	t	f	{"Educational Speaker"}
t8rw7fygpfefpt9u0dz8	846303490	kabehnke	Kelsey	Behnke	Alpha Gamma Delta		t	f	f	{"Educational Speaker"}
zswhxgz5h73a14uxtr21	538959477	jLin	Jessica	Lin	Sigma Kappa		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
uxfkqdkmbhctyw9w5eb2	37081068	jicasas	Julia	Casas	Alpha Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
ib64o9y7nvhvw5ijudde	753893140	esalzman	Ethan	Salzman	Sigma Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
vi8y76ie9sfpoaz3ncrp	680757077	brianneg	Brianne	Gates	Alpha Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
gskyc0gzxs61c3w0is5p	203194992	jbaldwin	Jamie	Baldwin	Alpha Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
agl244d1buveustbplou	733654922	mazenk	Melissa	Zenk	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
rz1ztev2t3uama09px6z	801255515	morganj3	Morgan	Johnson	Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
bdlb2lcy8hf14o3on857	574716775	epagano	Emma	Pagano	Kappa Kappa Gamma		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
lc2atfthmod96x7182h9	760316557	gibbonsj	Jack	Gibbons	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
jmbt0aiwcwe5486yo24o	918624735	dcarp	Danielle	Carpenter	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
9agxk4ia1kzbid3eumop	766486721	sreidem	Steven	Eidem	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
pjvn627sdo5v3296850x	826246449	cluhring	Christian	Luhring	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
jf8gk0sqsetllk2yr1yh	188340231	jabascal	Jorge	Abascal	Phi Gamma Delta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
mu9n816jlh58zgfxzzh1	540722222	djones27	Daniel	Jones	Delta Tau Delta		f	t	f	{Volleyball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
k9s43lwvh5phbop4rlaa	881487607	jkelly55	Benjamin	Kelly	Alpha Gamma Rho		f	t	f	{Dodgeball,"Educational Speaker",Broomball}
yx8c42mdpszuadhwhudu	289133865	jalenp	Jalen	Parrington	Chi Omega		t	t	f	{"Educational Speaker"}
oqtlij6fxijpylhbgkn1	539073535	abonn	Alexandra	Bonn	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync"}
8mq1c4tjbjdbp048tl22	418523105	cmhoffey	Camille	Hoffey	Sigma Kappa		t	f	f	{"Educational Speaker","Lip Sync"}
kk2cn3fi25q8hgygv0qx	495573106	elij	Elisha	Johnson	Phi Kappa Theta		t	t	f	{"Lip Sync","Educational Speaker",Treds}
rg2x9vutli28747c2pef	914438525	acancino	Arturo	Cancino	Phi Kappa Theta		t	f	f	{"Lip Sync","Educational Speaker"}
usb6allwylwcivps508a	900935067	matthewk	Matthew	Kinnander	Triangle		t	t	f	{"Educational Speaker"}
au0xeczkkipym4mj7g3r	593958389	ellie	Eleanor	Wood	Alpha Sigma Kappa		f	t	f	{"Educational Speaker"}
iklppfefnhnlcimr7j52	557288732	cnc	Courtney	Carradus	Alpha Chi Omega		f	t	f	{"Educational Speaker"}
msh8rjt0mt03pnozq45s	887440554	erice1	Eric	Edwards	Delta Tau Delta		f	t	f	{"Educational Speaker","Lip Sync"}
4zxejtxsy16jszvx8rb4	469481012	cmorley	Caitlyn	Orley	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync"}
wm3wyt3b76ph6yki6ssf	104973869	nwegner	Nathaniel	Wegner	Alpha Kappa Lambda		f	t	f	{"Educational Speaker"}
ugvb29jhtnrmabz1eq5b	127962835	drewn	Drew	Nielsen	FarmHouse		f	t	f	{"Educational Speaker"}
soqizpkk64mkp9hc1asl	706246556	afgoeser	Abigail	Goeser	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync"}
pes40mxiiegp75dbo55j	852292441	zjohnson	Zachary	Johnson	Delta Tau Delta		f	t	f	{Treds}
68oxt3qvnfisloqt9mqc	62650588	rolofson	Carsten	Rolofson	Lambda Chi Alpha		f	t	f	{Treds}
p8k9gi138j917qaimt71	994965972	rckiener	Rachel	Kiener	Sigma Kappa		t	t	f	{"Karaoke 1st Cuts","Educational Speaker","Lip Sync","Karaoke 2nd Cuts"}
l101jje2atsa0ui8n4l2	340768456	brennap	Brenna	Peterson	Kappa Alpha Theta		f	t	f	{"Educational Speaker","Lip Sync"}
d18c4nikjxu8fl4p77ci	677204528	cjstill	Collin	Still	Lambda Chi Alpha		t	t	f	{Treds}
adt0om4vy8fkazs1bqsy	410104695	emman	Emma	Nielsen	Sigma Kappa		t	f	f	{"Educational Speaker","Lip Sync"}
gthjacw66bjs7rw5b3pd	357399042	sglancy	Samuel	Glancy	Delta Tau Delta		f	t	f	{"Lip Sync",Treds}
22zeb5dhgakug2x428wx	175708565	kmceach	Katelyn	McEachron	Kappa Kappa Gamma		t	t	f	{"Lip Sync"}
05uqbzfh4xyb1kljbq59	454425972	gabriels	Gabriel	Snodgrass	Pi Kappa Alpha		t	t	f	{"Lip Sync"}
53m50x63mac3hpckprg3	981816859	tjhuben	Trevor	Hubener	Theta Delta Chi		t	f	f	{"Educational Speaker","Lip Sync"}
d4b4glm1ibiqpyn7x4sq	528142638	cummings	Mikayla	Cummings	Kappa Alpha Theta		t	t	f	{"Karaoke 1st Cuts","Lip Sync"}
lju96r0ln9plukvs4ost	422721323	anthonyg	Anthony	Gardner	Tau Kappa Epsilon		t	f	f	{"Educational Speaker","Lip Sync"}
ra02gltzv5u80d0qpljf	278792559	vfreeman	Victoria	Freeman	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
0kj5x6iji3eesbkbbfal	596830234	kdsankey	Krystal	Sankey	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
eldy98ha4h24mpwihtle	3550571	rwholden	Robert	Holden	Beta Sigma Psi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
u2h9675en5wfqx4tfdc2	647338720	klnorris	Kennedi	Norris	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
rspwq4qtll04zfvgiwiu	402079678	anhend3	Alyssa	Henderson	Phi Beta Chi		f	t	f	{"Show Me The Greeks","Educational Speaker","Lip Sync","Polar Bear Plunge"}
lhecy14q5t8c6993slk7	490146674	lcp14	Luke	Peters	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
drapbx4g0b6as2mf0531	274485275	gzaleski	Glenn	Zaleski	Theta Delta Chi		t	t	f	{"Educational Speaker","Lip Sync","Trivia Blast","Polar Bear Plunge"}
iuvyd5ve49m8m4d0krfn	49030982	tchuisse	Monique	Tchuisse	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
pzhaztnsk0mwffjrgw36	40303263	scwiese	Shayne	Wiese	Alpha Gamma Rho		f	t	f	{"Karaoke 1st Cuts","Educational Speaker",Treds,"Polar Bear Plunge"}
xh66sw852sdl3op25x9b	387925569	jlewton	Jacob	Lewton	Sigma Phi Epsilon		f	t	f	{Dodgeball,Treds,"Polar Bear Plunge"}
vh989lytcyfllmpubxsz	44834790	njcoduto	Nicholas	Coduto	Theta Delta Chi		f	t	f	{"Educational Speaker","Lip Sync",Treds,"Polar Bear Plunge"}
fgh00cje6usexlavd0c6	935474564	domalley	David	O'Malley	Phi Gamma Delta		f	t	f	{Treds,"Polar Bear Plunge"}
c81ta6bj93xs57dfhdv4	812932272	aejacobi	Anna	Jacobi	Delta Delta Delta		f	t	f	{Dodgeball,"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
vz8rmswgnmykdm20wa1s	354923605	cjeason	Colin	Eason	Phi Gamma Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
1juyiia1ngpa2z3sxdck	675061411	mtreb	Michael	Trebisovsky	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
sraopl2a2w9931tfl14l	809373590	aray	Allison	Ray	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
mf183glfsldfm07xbdz6	276337061	nathann	Nathan	Nuehring	Alpha Kappa Lambda		f	t	f	{Treds,"Polar Bear Plunge"}
9jshk8cf4rynfiks8bvd	335966655	mmichaux	Maria	Michaux	Delta Zeta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
bb4u6ih7kuu9fu8rxbju	396330966	badirks	Brooke	Dirks	Sigma Kappa		f	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
1llw6hdr1rdu1j4etqzo	684649990	nkc	Nicholas	Costello	Phi Gamma Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
rmjqcegv0nboggse5eql	177072933	jknguyen	Julia	Nguyen	Kappa Alpha Theta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
xllrhvhnrdnuquswi9ba	748516786	allysong	Allyson	Goldsmith	Kappa Kappa Gamma		t	f	f	{"Educational Speaker","Lip Sync"}
fbga7z824v53da11eyrp	866140275	israelt	Juwon	Toluwalase	ACACIA		f	t	f	{"Educational Speaker"}
4bn47dyfw1vi8u8wtbik	177205028	am11	Alexandria	Mullally	Alpha Delta Pi		f	t	f	{"Educational Speaker"}
vdndx3bsh6szpwuhjev0	827573747	chreed	Carter	Reed	ACACIA		t	t	f	{"Educational Speaker",Basketball}
b4tc8dl8245ygaseflia	153841688	dapalomo	Dakota	Palomo	Delta Tau Delta		t	f	f	{"Educational Speaker","Lip Sync"}
jejeui962p5bfqovq8nd	558756219	clepczyk	Caroline	Lepczyk	Kappa Kappa Gamma		t	f	f	{"Educational Speaker","Lip Sync"}
b46ovjys8b8m8uwyhdcu	341598053	bengtson	Ellie	Bengtson	Kappa Kappa Gamma		t	f	f	{"Educational Speaker","Lip Sync"}
3r2lkn7vl4544fiffoes	801160360	jacksong	Jackson	Griffith	ACACIA		f	t	f	{"Lip Sync"}
03wce2u81ijes2egpyrp	993528536	akmaurer	Alexander	Maurer	Phi Gamma Delta		f	t	f	{Dodgeball,Volleyball,"Educational Speaker","Lip Sync",Treds}
b5r77l1c9xhw6jubquz4	206667461	kylie	Kylie	Hamerlinck	Kappa Kappa Gamma		t	t	f	{"Lip Sync"}
vlacn89kvo7yg9gf8lzf	448833409	kendhull	Kendall	Hull	Kappa Alpha Theta		f	t	f	{"Educational Speaker","Lip Sync"}
byr7avui62r92ddamrbe	71323273	hmridder	Hannah	Ridder	Kappa Alpha Theta		t	t	f	{"Educational Speaker","Lip Sync"}
jzjh8z6zo79jcmg9o7ab	544156613	patleahy	Pat	Leahy	Sigma Chi		f	f	f	{}
ougisytxaigo7h5hg273	946280335	lkovar87	Louis	Kovarik	Kappa Sigma		f	t	f	{"Educational Speaker",Treds}
q6p3het3lh6f277i1h0i	27156157	akoloski	Allison	Koloski	Kappa Alpha Theta		f	t	f	{Treds}
sjgty2iynv9muyl9odf0	393163771	jlili67	Jacob	Lilienthal	Alpha Gamma Rho		f	t	f	{"Educational Speaker","Trivia Blast"}
soracb9k0iks1dvcairw	439343905	ajtjaden	Andrew	Tjaden	Theta Chi		f	t	f	{"Trivia Blast"}
uai3mboh40b07gh5u5w0	651838215	jpscott	Joseph	Scott	Delta Tau Delta		f	t	f	{"Educational Speaker","Lip Sync",Treds}
xpk4z07vlib5mjr9znza	199433234	lmmeese	Lauren	Meese	Kappa Kappa Gamma		t	t	f	{"Educational Speaker"}
ejx37axlu3kvw7zoth27	983458476	markland	Abigail	Markland	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync"}
507bzfzm0w92l955qstw	272421149	wrmorgan	Weston	Morgan	Phi Gamma Delta		f	t	f	{"Educational Speaker","Lip Sync",Basketball}
kykm1o1jobuantgwq2kx	989436476	cjlawson	Christopher	Lawson	Theta Delta Chi		t	t	f	{"Educational Speaker","Lip Sync",Treds}
z5qe5vtv21pyhylh5hj9	448247800	asecord	Anthony	Secord	Sigma Pi		t	f	f	{"Educational Speaker","Lip Sync"}
7cxwl0rro6korivout1i	112844732	nstumbo	Nicolas	Stumbo	Delta Tau Delta		t	t	f	{"Educational Speaker","Trivia Blast"}
k03i0wf44u9zkyu1ket7	121067970	kmhora	Kaitlin	Hora	Gamma Phi Beta		t	t	f	{"Lip Sync",Treds}
ia7tlyygck9n8bgsbc18	192314170	naschrad	Noah	Schrad	Adelante		t	f	f	{"Educational Speaker","Lip Sync"}
5qumafwxs4k1h51n9zf8	739526788	ninas	Nina	Streauslin	Kappa Alpha Theta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
badu14zx1xe7763vps31	368218851	hjhuser	Hannah	Huser	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Trivia Blast","Polar Bear Plunge"}
abv7jtwmdrze20zsvos4	555541987	tgibney	Taylor	Gibney	Sigma Kappa		t	t	f	{"Educational Speaker",Treds,Basketball,"Polar Bear Plunge"}
3sil65srnw8qzgvfus2r	303112810	ghaughey	Garrett	Haughey	Tau Kappa Epsilon		f	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
fmoiockme43q07x0wz80	444785341	aanders2	Abbie	Andersen	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
qqw04myg6e045l4z0ek8	805283602	bbrugg	Benjamin	Bruggeman	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
gjyen8svawuizewk7evq	159320161	tjbaydin	Tommy	Khothisen	Delta Lambda Phi		f	t	f	{"Lip Sync","Polar Bear Plunge"}
wmhxakj13p2mb1tzcpug	698108411	sbraymen	Sara	Braymen	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
rslu57tzqztpbsxud4ea	419791400	markz	Mark	Zimmerman	FarmHouse		f	t	f	{Treds,"Polar Bear Plunge"}
sa6ulkmt48wdzedflxgm	739437699	ctitus	Collin	Titus	Theta Delta Chi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
dcxnfor1vdabvuz3w2vs	609287679	dmmuckey	Dylan	Muckey	FarmHouse		t	t	f	{"Polar Bear Plunge"}
pmeo7tr7v0w8kgh9ah0m	751929178	jfs	James	Sheridan	Theta Delta Chi		t	t	f	{Volleyball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
5eotshwybnmuuv5otn53	162307221	anowualu	Austin	Onwualu	Theta Delta Chi		f	t	f	{Basketball,"Polar Bear Plunge"}
f5mjqv8dw6vgr6ncvkqe	84354334	adam24	Adam	Schroeder	Delta Upsilon		t	t	f	{Dodgeball,"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
8boc9qzquesw2mud8gzu	805090286	parm13	Lincoln	Parmenter	Sigma Chi		f	t	f	{"Educational Speaker","Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
m4yapb47e91mwf8vcgyi	253516288	khoyt	Kimberly	Hoyt	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ik9n0ubtdoixg9r2omi6	496807346	lasquier	Luke	Squier	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
tdyp46hx8hvmf7rpln30	334943641	tadunne	Trevor	Dunne	Sigma Chi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
dmrj0lf593ks64rpv8vh	45855842	rileym	Riley	Mostaert	Kappa Alpha Theta		t	t	f	{"Educational Speaker","Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
hckc2vovyxest2aaydz6	213106906	cmpohlen	Christopher	Pohlen	Delta Sigma Phi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
dfw1qpc8moasy6nej4hv	784767011	kpbecker	Kathryn	Becker	Gamma Phi Beta		t	f	f	{"Educational Speaker","Lip Sync"}
llmcgl3tjvqs3bja0zdy	351857534	peleckas	Tomas	Peleckas	Delta Chi		f	t	f	{}
olm9yuevn1jzt7pd69bk	349892603	aschatte	Andrew	Schatte	Chi Phi		f	t	f	{"Educational Speaker",Treds}
xi7jr915g3o6g803bo0m	204199996	dlrankin	Dylan	Rankin	FarmHouse		f	t	f	{Dodgeball,Treds}
jtk72df3m6in9qrwwh9x	697951318	ntgregg	Nathaniel	Gregg	Delta Lambda Phi		f	t	f	{"Show Me The Greeks","Trivia Blast"}
0201216fwnkrnrodc5ot	580757249	hsartore	Hailey	Sartore	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker",Treds}
da0b1hbndl0zjjjfbpkj	66547481	mheitman	Matthew	Heitmann	Alpha Kappa Lambda		t	t	f	{"Educational Speaker",Treds}
vzrlbvsfnvacfaoraq89	832800969	eamanges	Eric	Manges	Phi Kappa Psi		f	t	f	{"Lip Sync","Educational Speaker",Treds}
fi9sdbb9jes8n89d9rxg	380142763	tjmackey	Timothy	Mackey	Delta Tau Delta		f	t	f	{Treds}
thkus2kp73pq13mxlj39	125935810	englishj	Jonathan	English	Tau Kappa Epsilon		t	t	f	{"Educational Speaker",Treds}
h78c23ha7zunudq5fiyx	912693826	ahhanner	Austin	Hanner	Pi Kappa Phi		f	t	f	{"Educational Speaker","Trivia Blast"}
o5ho0b6z0mhlvwiobeuh	491029559	jmelias	Justin	Elias	Delta Upsilon		f	t	f	{Volleyball,Basketball}
1dilcjlq16splnyunew6	277630353	atmercer	Andrew	Mercer	Phi Kappa Theta		f	t	f	{Basketball}
2ol5jacmer1qqyi4wdmp	961085145	ctrumm	Carolyn	Trumm	Alpha Delta Pi		f	t	f	{Basketball}
m1npjs4r8h065noip72z	272733489	megli	Madison	Egli	Alpha Delta Pi		f	t	f	{Basketball}
zkfiolgmwiymd5ejjk9i	358220863	hansonn	Nigel	Hanson	ACACIA		f	t	f	{"Show Me The Greeks","Trivia Blast"}
2twmvrfnqiyi3cgkyxer	714477877	abdulm	Abdul	Mohammed	Theta Delta Chi		t	t	f	{"Karaoke 1st Cuts","Educational Speaker","Lip Sync","Karaoke 2nd Cuts"}
jf83ra30ztcztmaz8jrt	44539495	kaduggan	Kelsey	Duggan	Sigma Kappa		t	t	f	{"Educational Speaker",Treds,Basketball}
2idjepq28hsmpwvyvdnp	30394364	dcary	Dustin	Cary	Delta Upsilon		t	t	f	{}
3mvnsxq37thob82zk5lr	213317104	cdolphin	Chad	Dolphin	Tau Kappa Epsilon		f	t	f	{Treds}
4tklimi0gzycdho4zftc	731057354	meganlp	Megan	Peters	Alpha Delta Pi		t	t	f	{}
9oqhc3s0k4bhmzif2m3b	707496815	jpwilkin	John	Wilkin	Phi Kappa Theta		t	t	f	{"Lip Sync",Basketball}
m1ccst35vffppr2e06ek	355449119	sophieh	Sophia	Hetherington	Gamma Phi Beta		t	t	f	{"Show Me The Greeks","Educational Speaker","Trivia Blast","Polar Bear Plunge"}
84l9vfjbnt1ny4k3pr0i	588974399	carlyem	Carlye	Marshall	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
9x07h8fclkn1oehsqgnm	767041275	bdehn	Brandon	Dehn	Delta Lambda Phi		f	t	f	{Dodgeball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
u2i960x644fbatqt8zdc	313256969	meganstr	Megan	Striegel	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
cqhxpjhtre2oaymdamkp	109485403	hmolson	Hanna	Olson	Sigma Kappa		f	t	f	{"Karaoke 1st Cuts","Karaoke 2nd Cuts","Polar Bear Plunge"}
moh03koi3ppk5u1z2e0w	535952444	ntnotaro	Nathan	Notaro	Sigma Pi		f	t	f	{Dodgeball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
d84f9us7bui4ajaeruiy	92046976	sidharen	Sidney	Haren	Sigma Kappa		t	t	f	{"Polar Bear Plunge"}
1qnjrpymko2v8jd2609v	923010088	powerg	Gregory	Power	Pi Kappa Alpha		f	t	f	{"Show Me The Greeks","Trivia Blast","Polar Bear Plunge"}
nfzdyyqg3xcs0hi4gvx1	900267368	lmarston	Lucas	Marston	Sigma Phi Epsilon		f	t	f	{"Educational Speaker",Basketball,"Polar Bear Plunge"}
sgdhetc5yxq8k0vih7d1	385834449	eraugust	Elizabeth	Augustine	Alpha Phi		f	t	f	{"Karaoke 1st Cuts","Karaoke 2nd Cuts","Polar Bear Plunge"}
q3dvy2ss0bmxiddtt5kc	271504605	okdekok	Olivia	Dekok	Alpha Phi		t	t	f	{Dodgeball,"Karaoke 1st Cuts","Karaoke 2nd Cuts","Polar Bear Plunge"}
fessgkiuzj5emoef318m	755475761	jalilly	Jake	Lilly	Delta Upsilon		t	t	f	{Dodgeball,"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
xjusct6xji4gfltbxf9i	992555593	trmosher	Tanner	Mosher	Theta Delta Chi		t	t	f	{"Polar Bear Plunge"}
q0hax0u2pezh43v0lbay	727638912	smddee	Sean	Dee	Delta Upsilon		t	t	f	{"Lip Sync",Basketball,"Polar Bear Plunge"}
xzaegmq0pa8i0eiriizs	658726068	klreed	Katie	Reed	Delta Delta Delta		f	t	f	{Basketball,"Polar Bear Plunge"}
px70qcu2eadd8pbxexxi	996607612	jemilie	Emilie	Johnson	Sigma Kappa		t	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
l88tsiaeaj0t5lmdy4ja	854659806	nhesterm	Nathan	Hesterman	Phi Kappa Psi		f	t	f	{"Karaoke 1st Cuts","Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
b0ayyku47m06dh56opuy	130393263	crschm	Caroline	Schmidt	Delta Delta Delta		t	t	f	{"Trivia Blast","Polar Bear Plunge"}
nrwv2acyttn14mluvcja	191388221	maxm1	Max	Mollenhauer	Sigma Chi		t	t	f	{Treds,"Polar Bear Plunge"}
zxlsvlkn1dze4v2n6rfc	267305062	mbredice	Michael	Kenealy-Bredice	Sigma Pi		t	t	f	{"Lip Sync",Broomball}
r3g2c2tk8qq1obfh3q21	122511417	ndoor24	Nicholas	Dohrmann	Phi Gamma Delta		t	t	f	{"Lip Sync","Trivia Blast","Polar Bear Plunge"}
li3bmyezrbchn2jyya3m	32208205	acwhite	Alec	White	Delta Tau Delta		f	t	f	{"Karaoke 1st Cuts","Lip Sync","Karaoke 2nd Cuts","Polar Bear Plunge"}
99vymywnwe3tvm3rgspp	458834399	cplouffe	Colin	Plouffe	Phi Gamma Delta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge",Broomball}
5lvh8abqscrzox5ymz8y	188729541	msunderm	Michaela	Sundermann	Alpha Phi		t	t	f	{"Lip Sync","Trivia Blast"}
2i812r0ssr0bj3zf8nh7	90281223	mslynch	Mallory	Lynch	Chi Omega		f	t	f	{Dodgeball,"Karaoke 1st Cuts","Educational Speaker","Karaoke 2nd Cuts"}
n0xxm3rq3dknlodare1q	235931696	njameson	Nathaniel	Jameson	Delta Tau Delta		t	t	f	{}
s6dcv5pp0o8w4lcdvimp	333722389	bbormann	Brenna	Bormann	Kappa Alpha Theta		f	t	f	{"Lip Sync","Trivia Blast"}
mz5ldy2yrbw8gk8zx4dj	248361137	reburres	Reed	Burres	Beta Sigma Psi		f	t	f	{"Trivia Blast"}
2iosmlhe6jzjsbotlrr9	327600273	chantzr	Chantz	Rodriguez	Delta Sigma Phi		f	t	f	{Treds}
5i5u05ejn12rcark437m	58721663	ammanske	Ashley	Manske	Alpha Delta Pi		f	t	f	{Treds}
axn90gztp3701w5hh30p	250205956	rag21	Robert	Gallegos	Pi Kappa Alpha		f	t	f	{Treds,Basketball}
wvk4somkt9bf2d8c6txb	277442185	ebleahy	Ellen	Leahy	Chi Omega		t	f	f	{"Educational Speaker"}
iax1pxvx6uxi5dngt8xe	602021441	pgantner	Paige	Gantner	Delta Zeta		t	f	f	{"Educational Speaker"}
6gzaxhqv2osu1s5xda32	201788587	chjust	Carissa	Just	Gamma Phi Beta		t	f	f	{"Educational Speaker","Lip Sync"}
b5huvpwnqispomqmu92e	767302536	kmblack	Katherine	Black	Pi Beta Phi		t	f	f	{"Educational Speaker"}
9lqjwinz542w56qhro0v	970343374	lrromeo	Leah	Romeo	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
uzh498xv4wh0kvdg1idp	57570525	ncspear	Nicole	Spear	Gamma Phi Beta		t	f	f	{"Educational Speaker","Lip Sync"}
23zv8iznnreqzcj65uaj	194613419	mmilten	Madelyn	Ilten	Sigma Kappa		f	t	f	{"Karaoke 1st Cuts","Karaoke 2nd Cuts"}
g8vaaq8xtkrgd6c58kgo	138721583	abachman	Amber	Bachman	Pi Beta Phi		t	f	f	{}
o9wofvokcyi7e5hy1ltp	116921805	jjminnec	Jonathon	Minnec	Delta Sigma Phi		f	t	f	{Basketball}
goay958fvcylit4et4ec	687904217	rjreicks	Ross	Reicks	Adelante		t	f	f	{"Educational Speaker"}
xl9xjal5f4zwg6l9duii	814002222	chrice	Cole	Rice	Sigma Pi		t	f	f	{"Educational Speaker","Lip Sync"}
qnaw3x155rgidbbu8zbc	78351273	hudachek	Shay	Hudachek	Phi Delta Theta		t	f	f	{}
c04ojvlkz72cl340lnzg	240594354	easonkr	Kaleigh	Eason	Alpha Omicron Pi		t	f	f	{}
upcdc0nlum0m3iio60oq	759539781	jacavino	Maria	Jacavino	Phi Beta Chi		f	t	f	{"Trivia Blast"}
d247gmkx79l8jrosdg1g	910898000	allyc	Ally	Cunningham	Alpha Gamma Delta		t	f	f	{}
e5nfujuhfmrcrzmzrlbf	611510924	mkorn97	Mitchell	Korn	Alpha Sigma Phi		t	f	f	{"Educational Speaker"}
hwz014gkrl5hr3bq24nd	227146599	ztiamiyu	Zenab	Tiamiyu	Kappa Kappa Gamma		t	t	f	{"Karaoke 1st Cuts","Educational Speaker","Lip Sync","Karaoke 2nd Cuts"}
m4gk68v0yhylqiq0vrlf	781762982	ahaugen	Anna	Haugen	Kappa Alpha Theta		t	t	f	{"Lip Sync",Treds,Basketball}
vks4am7h8yz0xuin3r50	898332458	camdenvb	Camden	Van Brocklin	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge",Broomball}
iifzzw5hohm137uwigh1	8574601	elgarzon	Elizabeth	Garzon	Kappa Kappa Gamma		f	t	f	{"Trivia Blast","Polar Bear Plunge"}
lctxh5qaps4ki61adh9k	17354370	djeuker	Daniel	Euker	Sigma Pi		t	t	f	{"Karaoke 1st Cuts","Educational Speaker","Lip Sync","Karaoke 2nd Cuts","Polar Bear Plunge"}
exoiekhzfjpvunjutkas	116079964	croesler	Claire	Roesler	Alpha Delta Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
7967rnipwkx7muxrejx4	620897301	tsward	Tyler	Sward	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
v3wm1qy3z9hyju4v1xo9	69205136	alexisa	Alexis	Atkinson	Alpha Delta Pi		t	t	f	{"Polar Bear Plunge"}
o3tuy8e8ey3k0i0rg4qw	917128212	kistner	Kaci	Kistner	Pi Beta Phi		t	t	f	{Volleyball,"Lip Sync",Treds,Broomball}
146kza5umc9oz1k1lutw	54936882	stephmcm	Stephanie	McMillan	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker",Treds,Basketball,"Polar Bear Plunge"}
3zu7h7rqrx8nkav7c5fa	418228811	tcahill	Tyler	Cahill	Sigma Pi		t	t	f	{"Polar Bear Plunge"}
dj9f3opkztomr1baknf4	850140322	embliek	Emily	Bliek	Alpha Omicron Pi		t	t	f	{"Lip Sync","Trivia Blast","Polar Bear Plunge"}
6xjupujbznvf7gtfp2mp	490399927	bbrown	Braxton	Brown	Kappa Sigma		t	t	f	{Treds,"Polar Bear Plunge"}
wzhedqz8ft2oxsohkkui	602985407	mikaylab	Mikayla	Becker	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
flkc4wl2enzfyafbffqn	383151797	ryansher	Ryan	Sheridan	Theta Delta Chi		f	t	f	{"Polar Bear Plunge"}
wy4prixq4pehbzdkd5f3	774082372	jcherwin	Joseph	Cherwin	Sigma Chi		t	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
cgnajkvxjms4r6ktjix1	403816413	srkelsey	Scott	Kelsey	FarmHouse		t	t	f	{"Polar Bear Plunge"}
a3tfn2fxh2anlpu04ly0	96388464	dholstad	Daiton	Holstad	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
r96lwh4eku6sey9ba5t6	352994667	nvdb	Nicole	VanDenBosch	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ao8l38shsilhrax5pylc	200681520	kedevens	Kaari	Devens	Gamma Phi Beta		f	t	f	{Volleyball,"Educational Speaker","Lip Sync",Basketball,"Polar Bear Plunge"}
7z78u6g10i2k6xxxphgf	517934417	tgalvin	Tatiana	Galvin	Delta Zeta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
kxw6g4lthdp6271sg2v6	100588508	lovenmac	Macintyre	Loven	Alpha Tau Omega		t	t	f	{"Lip Sync","Educational Speaker","Trivia Blast","Polar Bear Plunge",Broomball}
8agbn1xc3vxpslbet7ap	119164072	atcross	Alexa	Cross	Gamma Phi Beta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
hdlr8tmr0gugh4czdr0k	49933884	cfleming	Claire	Fleming	Gamma Phi Beta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
uci3xaol0905qkiqa0y1	376387011	emsepke	Emma	Sepke	Sigma Kappa		t	f	f	{}
giymtckm52j4ek0f204g	443856413	lljensen	Lauren	Jensen	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync",Basketball}
mjj98p3jela3tt7lyeoh	429471042	hseaman	Hannah	Seaman	Gamma Phi Beta		f	t	f	{Treds,Basketball}
8o021ccrgredvefecoob	906413573	torntore	Matthew	Torntore	Theta Delta Chi		f	t	f	{"Educational Speaker","Lip Sync",Basketball}
tbr04jqeoj0bhmkde8y2	456389998	kcvaske	Kierstin	Vaske	Alpha Phi		f	t	f	{Basketball}
cudx7veaz7hp3yntv0wl	861722890	kcrowley	Mary	Crowley	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker"}
e50di4l0s6ob2al6hxqi	964187256	tvluong	Thuan	Luong	Delta Lambda Phi		t	t	f	{}
6dhluazgfzgy4oa4o5or	736759023	tlwalsh	Taylor	Walsh	Kappa Alpha Theta		t	t	f	{"Lip Sync"}
hd6kp302ngpzpxe3ha7r	217712495	acporth	Alaina	Porth	Kappa Kappa Gamma		t	t	f	{Volleyball,Treds}
86qyvpz64n50rdwtlgob	305768463	shelbyo	Shelby	Oldenkamp	Phi Beta Chi		t	t	f	{}
4gu3n9jfcjb38mg9a640	636615003	tkcausey	Tatum	Causey	Delta Zeta		t	t	f	{}
qio1bwwgnfll637cya3c	889285397	tjluebe	Trevor	Luebe	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync"}
i87c142k0my2s8yg9n85	773284532	mtlukas	Michael	Lukas	Theta Delta Chi		t	t	f	{"Show Me The Greeks","Educational Speaker","Lip Sync"}
lb3tegt7bogvkvtayzmu	961852892	nathan1	Nathan	Stewart	Alpha Sigma Phi		t	f	f	{"Lip Sync"}
lnvr6guzhvatrnodb81t	209499318	cmcoffey	Collin	Coffey	Phi Delta Theta		t	t	f	{"Lip Sync","Educational Speaker"}
yyv24htqygy6t4nam1wf	412527144	neklein	Noah	Klein	Phi Delta Theta		t	f	f	{"Lip Sync"}
zzz2tbckq9nr2mb4v8m4	183435292	colinc	Colin	Christoph	Sigma Pi		t	t	f	{"Educational Speaker"}
zg33pd270ps4l2opm9lx	194136943	nthiesse	Natalie	Thiesse	Kappa Delta		t	f	f	{"Educational Speaker"}
n77l9wg4quzcnp1ypv40	682451797	klslater	Kayleigh	Slater	Kappa Alpha Theta		t	f	f	{"Lip Sync"}
xrcryc5fu4wmhkp2i2j4	1000015	bbrand	Brian	Brandstatt	Alpha Tau Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
qcvw6b633jkg7g6fcknv	202391189	bwhalley	Benjamin	Halley	Beta Sigma Psi		t	t	f	{Volleyball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
fjw95kprhfigt15ue1f9	330259930	humiston	Nicole	Humiston	Kappa Delta		f	t	f	{"Educational Speaker","Trivia Blast","Polar Bear Plunge"}
r1foust50zbihuuew5pi	288142916	zenobian	Lili	Zenobian	Sigma Kappa		t	t	f	{"Karaoke 1st Cuts","Educational Speaker","Lip Sync","Karaoke 2nd Cuts","Polar Bear Plunge"}
vymc9dt0rf6vb73u9rxz	333428095	davidjh	David	Henscheid	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
5br0e9sugllhtfavdliz	695035341	schweiss	Carissa	Schweiss	Pi Beta Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
5aoadhjtfwyh68v5foku	307264958	krj	Kathleen	Johnson	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
f8xnk17xc91uj9ruwdl5	558399842	karil	Kari	Ludvigson	Alpha Gamma Delta		f	t	f	{"Educational Speaker",Treds,Basketball,"Polar Bear Plunge"}
86fkd02xdjtxcaoc64br	692415724	edrost	Erik	Drost	Kappa Sigma		f	t	f	{"Educational Speaker",Basketball,"Polar Bear Plunge"}
4g7rb4l0oueq9mmr62ao	790965943	cuvelier	Emmy	Cuvelier	Alpha Phi		f	t	f	{"Karaoke 1st Cuts","Karaoke 2nd Cuts","Polar Bear Plunge"}
ydmyrsiapdpr735x9k0j	309723442	cbergren	Nicole	Bergren	Alpha Phi		t	t	f	{"Polar Bear Plunge"}
nhp6uwsmn402gthvnd56	610350741	nikola	Nicholas	Collison	Delta Upsilon		t	t	f	{"Lip Sync","Polar Bear Plunge"}
ezon43579x5mxzavgq77	334853547	jhiss	Jared	Hiss	Sigma Phi Epsilon		t	t	f	{"Karaoke 1st Cuts","Educational Speaker","Karaoke 2nd Cuts","Polar Bear Plunge"}
1h7kcwi0kf94jarhmsg7	298951677	npanicol	Nick	Panicola	Chi Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
xkskyoy4suniw3fualr9	403766391	caehlen	Christian	Ehlen	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
9gjizg3vjd5z9ut68q1m	286618403	ellib	Ellizabeth	Beardsley	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
bac5he6o50t30uvh777t	183301142	jghani	Juliana	Ghani	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
5pur01lx0iluwttyq4z7	518658160	dmautino	Dante	Mautino	Alpha Kappa Lambda		f	t	f	{"Educational Speaker","Trivia Blast","Polar Bear Plunge",Broomball}
kdngwvczsh1ebujmahuj	872835964	mxnelson	Maxwell	Nelson	Alpha Sigma Phi		t	t	f	{"Lip Sync","Trivia Blast","Polar Bear Plunge"}
uk62srv7wbyvj6tseo1y	396573205	jlyons	Joshua	Lyons	Alpha Kappa Lambda		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
3xvlbei2ayygzuvm37a7	645111467	thanhn	Thanh	Nguyen	Sigma Phi Epsilon		t	t	f	{"Show Me The Greeks","Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
2g3fes8u0hihn2phssgo	763967204	jlmadsen	Janelle	Madsen	Gamma Phi Beta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
hb9bbjfj1ex6qlkniewr	383769406	lawlerj	Jacqueline	Lawler	Gamma Phi Beta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
503q28gh5wj26t8nsoif	168992852	cbauer	Christopher	Bauer	Delta Sigma Phi		t	t	f	{"Trivia Blast","Polar Bear Plunge"}
amfs0jaetlbtxsyhsyi2	574936362	ralewis	Ricardo	Lewis	Delta Sigma Phi		t	t	f	{"Polar Bear Plunge"}
0svx65obkt3i6onkzaox	640404797	bfgella	Bailey	Gella	Kappa Kappa Gamma		t	t	f	{Broomball}
xsfbuwl10q003gww28zg	277017163	kemoritz	Kathryn	Moritz	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
64az30r59uys6yl9o7t3	228947719	Kevinc1	Kevin	Corcoran	Sigma Pi		t	t	f	{Dodgeball,"Lip Sync",Treds}
zxqavleu65xjmffnj7p9	246221010	camilleg	Camille	Griffith	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
i0ysjohi2hff70f1qhpw	490004522	raslezak	Rachel	Slezak	Alpha Phi		t	t	f	{"Educational Speaker"}
q4zrgoq17vfl42rqc4du	744566823	amsummy	Alexandra	Summy	Chi Omega		t	t	f	{}
hitnjpyxz2a68pvmc291	882530674	lfladung	Logan	Fladung	ACACIA		t	f	f	{"Lip Sync"}
985jdvnjpchjfilv23pv	837855018	bmozey	Brian	Mozey	ACACIA		t	f	f	{"Lip Sync","Educational Speaker"}
741a5ywvsmc0e8gn31h6	19038019	lbutcher	Laura	Butcher	Sigma Kappa		t	f	f	{}
8804gqee0ps4shtgzzbx	248037790	dbielski	Dena	Bielski	Alpha Delta Pi		t	f	f	{"Lip Sync"}
ssg1jxmw3h2tdroze5n2	874063190	djsalmon	David	Salmon	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Educational Speaker"}
mvj00ic46uq53mmywklt	105054950	kpedrick	Katrina	Pedrick	Kappa Kappa Gamma		t	f	f	{"Educational Speaker"}
zqvhgkxh3mt7bt4onzby	809587779	jillyk	Jill	Krygowski	Kappa Alpha Theta		f	t	f	{Volleyball,"Educational Speaker","Lip Sync"}
22gtzg4eftd0cup9x22w	853570718	morgant	Morgan	Thompson	Chi Omega		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Educational Speaker","Karaoke 2nd Cuts"}
cn02ggzvj4o8c8vy67pu	672630976	mabauer	Michelle	Bauer	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker"}
3g49i6gaqte7fh55yrfb	836609774	ekkramer	Emily	Kramer	Alpha Chi Omega		t	t	f	{"Lip Sync",Basketball}
2muh7rxp0dh3bs8xv5os	780120368	eddavitt	Elizabeth	Davitt	Sigma Kappa		f	t	f	{"Educational Speaker"}
j8ooqg3nr3g473tjyyna	977414466	lubbene	Erin	Lubben	Alpha Delta Pi		t	t	f	{}
lu7ps24o2ayfllu40fc2	771737967	alcolton	Allison	Colton	Kappa Alpha Theta		f	t	f	{}
bssc6z00kpi630rxkt4u	299818547	wallarab	Kynndel	Wallarab	Alpha Omicron Pi		t	f	f	{"Lip Sync","Educational Speaker"}
nlyojnu49ct481046bo7	789636876	marilyng	Marilyn	Gasienica	Alpha Gamma Delta		t	f	f	{"Lip Sync","Educational Speaker"}
jqc4o9yomck6zn9dnn8k	714426713	jbader	Justin	Bader	Delta Sigma Phi		t	t	f	{"Lip Sync","Trivia Blast"}
xdoqew5wmynshk10hoj2	681638292	sarahgh	Sarah	Heuschele	Alpha Delta Pi		t	f	f	{"Educational Speaker","Lip Sync"}
s602nc7kpfg9v6jnx7y0	769899130	hstatler	Hannah	Statler	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
5bfti1l3qcrmgwjje5mw	146060915	emily1	Emily	Callison	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
l2ftwnctc8t3wcyhzuf6	117536479	chouang	Calvin	Houang	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
qyhukrh5xmpmvs2baolf	333711378	gmrapp	Grace	Rapp	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ohdbc70qz6hnab6bcow1	83304221	jcjones	Justin	Jones	FarmHouse		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
24jznmlgxkgmb3czj2ps	288439175	asuff	Anthony	Sufficool	FarmHouse		t	t	f	{"Show Me The Greeks","Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
38t5uhoarlcg7pacy818	924048196	mjstaley	Matthew	Staley	FarmHouse		t	t	f	{"Lip Sync","Polar Bear Plunge"}
sck8beuwfd2lmnwg6b2c	669228592	jahovda	John	Hovda	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ls8rlbovy8ceode5w78h	848337490	mssalo	Megan	Salo	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
xilfkk2ecqjnxh90wq94	536203689	nweaver	Noelle	Weaver	Chi Omega		t	t	f	{Volleyball,"Polar Bear Plunge"}
m9t3y3wxxa045bjf0x69	724007307	mcal	Matthew	Callahan	Phi Delta Theta		t	t	f	{"Lip Sync","Educational Speaker",Broomball}
kmrd2b5mlggl6a3797id	872904077	danblock	Daniel	Blockhus	Delta Upsilon		t	t	f	{"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
uwjadwdgxxkyi93gcjbr	687940313	mattdahl	Matthew	Dahl	Sigma Phi Epsilon		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Educational Speaker","Karaoke 2nd Cuts","Polar Bear Plunge"}
1ksx4mn7y6gsv73gt1fj	196410214	avogeler	Annie	Vogeler	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
zxupirm7ephqrqvk9njp	229985756	qdevries	Quinton	Devries	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
9kj9galepa0z321vegti	211818627	willm	Will	Montgomery	Phi Gamma Delta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
zpw8a0zfnws9ikmnwo4t	86623537	tayroe	Taylor	Roe	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
m00lfecgiw7h6o79tulm	664233570	khahn	Kaylee	Hahn	Chi Omega		t	t	f	{"Polar Bear Plunge",Broomball}
zw89915imufdje1tc9kt	922705808	zakelly	Zach	Kelly	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
e62lga0l7s51mromf9l2	130861731	vjohnson	Veronica	Johnson	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
wja54ehppi14wjsf3k4n	696959263	drink	Daniel	Rink	Tau Kappa Epsilon		t	t	f	{Dodgeball,Volleyball,Treds,"Polar Bear Plunge"}
jftvncjhaildi1o673v3	305446177	madbaker	Madeline	Baker	Gamma Phi Beta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
rr84ups9nduzgwvrxlqy	732933225	mpitt	Megan	Pitt	Sigma Kappa		t	t	f	{Dodgeball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
m6vkbamftvp81f15txxd	729397693	mckenz	McKenzie	Fairfield	Chi Omega		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Educational Speaker","Karaoke 2nd Cuts","Polar Bear Plunge"}
3cgifohg2z2k08xhvf1n	930641743	tomgal	Thomas	Gallagher	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge",Broomball}
gjg3ktf2tsy0plwp1948	640166552	elt1	Elizabeth	Thompson	Alpha Delta Pi		t	f	f	{"Educational Speaker","Lip Sync"}
1zpextdovkt16q2flesu	703833155	mjpetron	Michael	Petron	Phi Kappa Psi		t	f	f	{"Educational Speaker"}
mcat86k89nocftkhcmqf	490818345	ahobbs15	Amara	Hobbs	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
g8bu9c3wdvub4y3x7ay7	989610622	stefan5	Stefan	Peterson	Phi Gamma Delta		t	t	f	{"Educational Speaker","Lip Sync"}
vrkvirobnq138m5nctol	674502850	sdbrink	Samuel	Brinkman	Delta Tau Delta		f	t	f	{"Educational Speaker","Lip Sync"}
oxl6ulqs7ixgdi13u9f6	650343717	leharris	Laura	Harris	Alpha Gamma Delta		t	t	f	{"Educational Speaker"}
a07mbqmc55swvunwp638	343177847	olgakayy	Olga	Kallapodi	Alpha Phi		f	t	f	{"Educational Speaker"}
cyox0ifvhdgq9bb6hdik	291432164	lhf	Laura	Friedrich	Kappa Kappa Gamma		f	t	f	{Treds,Basketball}
7h0utmu4dkkz4o76u2us	387771408	bartelsa	Anna	Bartels	Kappa Delta		f	t	f	{"Educational Speaker",Basketball}
qeztpzmcey47li297it3	706057352	jspeer33	Jake	Speer	Phi Delta Theta		t	t	f	{"Lip Sync","Educational Speaker",Basketball}
cdzxgpe5rfxrjguky30v	381886505	mataloni	Allison	Mataloni	Chi Omega		f	t	f	{Basketball}
eaxedi1h56iuzeiv9xbt	670544914	hudnutt	Levi	Hudnutt	Delta Chi		f	t	f	{"Educational Speaker",Basketball}
e89xr83bz7v3u3rwkhpr	609049441	mferrera	Matthew	Ferrera	Phi Delta Theta		t	t	f	{Basketball}
13qnzh82nh9v48c3q0bu	755673919	hcsitz	Hannah	Sitzmann	Alpha Delta Pi		f	t	f	{Treds,Basketball}
k3f973v2fyqhgd9r8c9b	683162480	csteege	Courtney	Steege	Alpha Sigma Kappa		f	t	f	{"Educational Speaker",Basketball}
vzhn42w36ej44hb1i4xy	216849633	stewartj	Jason	Stewart	Pi Kappa Alpha		t	t	f	{"Lip Sync",Basketball}
3jya8tp8eh5ep2svwf9p	452064613	madelynp	Madelyn	Pisanelli	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker",Basketball}
g79054gdhnr1i68am7i6	129428320	emneel	Emily	Neel	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync",Basketball}
z45hzx2z3pqlcpr8wxby	694173480	lmfossum	Leah	Fossum	Pi Beta Phi		t	t	f	{"Lip Sync",Treds,Basketball}
p7375dthrgqgihzsjg8d	707643937	tlgraves	Tyler	Graves	Pi Kappa Alpha		f	t	f	{Treds,Basketball}
00cnsl15nkk02yj2a45e	647363749	hwolson	Hayden	Olson	Pi Kappa Alpha		t	t	f	{}
7chx1ejgh0xlf6cwg8v6	584131548	qparker	Quinn	Parker	Pi Kappa Phi		f	t	f	{Basketball}
j1cb8d1dfbvj87fmvrrc	620403808	blmcneal	Benjamin	McNeal	Sigma Phi Epsilon		t	t	f	{"Educational Speaker",Basketball}
k6odb85wutr3nlycr90y	249494245	kgklumpp	Kyle	Klumpp	Phi Delta Theta		t	t	f	{Basketball}
dk25youg9r71h64xftco	611729118	cfklein	Connor	Klein	Phi Delta Theta		t	t	f	{"Show Me The Greeks","Educational Speaker","Trivia Blast"}
r7jjd87vnelhyeu69ac3	161689790	hsaric	Haris	Saric	Pi Kappa Phi		f	t	f	{Basketball}
mihftxdj4lwfyyb0xyle	993841849	jhankins	Jonathan	Hankins	Delta Tau Delta		f	t	f	{Basketball}
lwmrwma75yepytktivjv	140853769	chassel	Carter	Hassel	Kappa Kappa Gamma		t	t	f	{Basketball}
gfonuq7gjquqfyzvo25k	237590353	fails004	Caleb	Fails	Beta Sigma Psi		t	t	f	{"Lip Sync","Educational Speaker",Basketball,"Polar Bear Plunge"}
erjhvg1qlyse0c5lylfd	714330648	bjhandel	Brianna	Handel	Sigma Kappa		f	t	f	{Dodgeball,"Educational Speaker",Basketball,"Polar Bear Plunge"}
0fwd2de2b19g9nx9bxfu	757525769	mkwagner	Mary	Wagner	Alpha Omicron Pi		t	t	f	{"Educational Speaker",Treds,Basketball,"Polar Bear Plunge",Broomball}
7typzdor5bqbg6so0025	464446010	stewartk	Kevin	Stewart	Delta Tau Delta		f	t	f	{"Educational Speaker","Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
qmlyb63cv9nt3c63cjzg	573894321	awilliam	Alexander	Williamson	FarmHouse		f	t	f	{"Educational Speaker",Basketball,"Polar Bear Plunge"}
4cdfe4w8xcrdblo3idjg	348193846	dbelknap	Dustin	Belknap	Alpha Gamma Rho		t	t	f	{Volleyball,"Lip Sync","Educational Speaker",Basketball,"Polar Bear Plunge"}
ag1ssgztqy23l0igll5k	580190639	cdscales	Charles	Scales	Alpha Tau Omega		t	t	f	{"Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
8dkf1tbi7pzxcfjku6zk	988808834	ericr	Eric	Rasmussen	Theta Delta Chi		t	t	f	{Dodgeball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
v9e31dzrdilw84dl8ykv	611225615	thomasn	Thomas	Nettleton	Delta Upsilon		t	t	f	{Treds,Basketball,"Polar Bear Plunge"}
mf4vn1l5zsn2ocivf6ri	823271481	smborys	Sydney	Borys	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker",Treds,Basketball,"Polar Bear Plunge"}
b6o2s12uz3e90tywjrv2	722075426	alexp	Alex	Pringnitz	FarmHouse		t	t	f	{Volleyball,Treds,Basketball,"Polar Bear Plunge"}
u61bn8et4tc2nbnb04ol	451336905	stitzell	Nicholas	Stitzell	Phi Kappa Psi		f	t	f	{"Show Me The Greeks","Educational Speaker",Basketball,"Polar Bear Plunge"}
qz2yw13nm7dqe7gzsux4	796546751	kpmagee	Killian	Magee	Phi Kappa Psi		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Educational Speaker","Polar Bear Plunge"}
hry5bsromvjss6uxe7vz	338456174	erandall	Emily	Randall	Alpha Phi		t	t	f	{Dodgeball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
82blp8hralpakvu18dx2	355730403	klath	Kyle	Lathrop	Phi Kappa Psi		t	t	f	{"Educational Speaker",Basketball,"Polar Bear Plunge"}
v7zu2coeellkrolkodg8	137101293	enielsen	Evan	Nielsen	Phi Kappa Psi		f	t	f	{Basketball,"Polar Bear Plunge"}
bl3zgb07m1ts5ftykx1q	541951438	afleuren	Aaron	Fleuren	Alpha Sigma Phi		f	t	f	{Dodgeball,Volleyball,"Educational Speaker",Treds,Basketball,Broomball}
b0tqf2ygjbqgb8hj9yf1	353432108	jmpappan	Justin	Pappan	Sigma Pi		f	t	f	{Dodgeball,Basketball}
ietgyog4gf49847516zt	775073299	jlaw	Josephine	Lawrence	Alpha Gamma Delta		f	t	f	{Basketball}
8zvg9a1lg9akvisrafp8	250107858	dubberke	Taylor	Dubberke	Phi Beta Chi		f	t	f	{Basketball}
g27hk5ove28l1rjm6sdd	993115143	andersp	Anders	Peterson	Delta Tau Delta		f	t	f	{"Lip Sync",Basketball}
2n5779bd4fq64joyopw8	24243219	wtgray	William	Gray	Tau Kappa Epsilon		f	t	f	{Basketball}
287543kjkn7zvwh2ltaw	824050247	shamusoc	Shamus	O'Connell	Phi Gamma Delta		f	t	f	{"Educational Speaker","Lip Sync"}
jgwgn0ytq4zjyk76p6of	372666294	jsnelson	Jacob	Nelson	Pi Kappa Alpha		f	t	f	{Dodgeball,"Educational Speaker"}
otjftfvqo3cdrs57ood5	783523741	ats1	Abigail	Stewart	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
h8e7jgtccz924gq7kphf	210871661	catier	Catie	Robinson	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
a41t4h2365rc65plhznb	164517353	laureng	Lauren	Gilbert	Gamma Phi Beta		f	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
cgds5c6l7k2plcqwke3f	135675565	kmwest	Kalley	West	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker"}
zqjn96lijk7ig0ovbijv	429392964	fmdj	Francesca	Johnson	Pi Beta Phi		t	f	f	{}
x9vw2mx4p3edjlgoz5c9	947425479	erins1	Erin	Schilling	Gamma Phi Beta		t	f	f	{}
ajf6ysn7c69lfmvzdiav	922559666	hwind	Hannah	Wind	Gamma Phi Beta		t	f	f	{"Lip Sync"}
m5vthaai3fphqgs4ddbk	386473087	mmthomas	Madelaine	Thomas	Pi Beta Phi		t	f	f	{}
eu7ozjsdn9pxvrofhkbk	236087880	gillotti	Blair	Gillotti	Pi Beta Phi		t	f	f	{}
qp9nyv41jgycd29zbwy8	384252869	tylerjay	Tyler	McKnight	Delta Lambda Phi		t	f	f	{"Educational Speaker"}
4l9ob821mja8ko861muw	189335215	ahuschle	Ashley	Huschle	Alpha Gamma Delta		t	f	f	{}
ymg6lq6o6z6ciqrwldiv	162848706	froncmeg	Megan	Fronczak	Pi Beta Phi		t	f	f	{"Lip Sync","Educational Speaker"}
qa32ygi4ryotdykwjn2w	397622250	swb	Sarah	Brangoccio	Pi Beta Phi		t	f	f	{"Educational Speaker"}
amhbsg2vd8l1uqbzm7fa	907043161	ascekic	Alexandra	Scekic	Alpha Omicron Pi		t	f	f	{}
pwh5hvhw4fmks3k90zr0	166517375	caabate	Charles	Abate	Phi Delta Theta		t	f	f	{}
izodvfhyol8w7k6048w5	429422017	kmmead	Kaley	Mead	Pi Beta Phi		t	t	f	{"Lip Sync","Educational Speaker"}
nlipe1ljt8jj2nev49js	225971746	noah	Noah	Cardamon	Sigma Pi		t	t	f	{Volleyball,"Educational Speaker","Lip Sync",Treds,"Polar Bear Plunge"}
yzbw6q23y9ul5ahynpzq	104885796	danielb	Daniel	Bornholtz	Alpha Tau Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
b0kj691dcltq8tj5mm43	920915022	lucas1	Lucas	McDermott	Alpha Tau Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
uui7ait2jothhtqd1mga	354531177	mrporter	Matthew	Porter	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
l05slu5hydxwx7el8cdb	946744799	rmreiter	Rachel	Reiter	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
sky6pcyvw76zvt6gsrnk	577841293	rmcorc	Riley	Corcoran	Kappa Kappa Gamma		t	t	f	{"Lip Sync","Polar Bear Plunge"}
0j0xx20rr2qix7k467o5	595239733	legaray	Lauren	Garay	Kappa Kappa Gamma		t	t	f	{"Polar Bear Plunge"}
3qgl0dxvx49hjd2fi9lj	490341869	nataliao	Natalia	Ostaszewski	Alpha Omicron Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
8sdaa9da2srg20025p3z	685012359	sjordan4	Samuel	Jordan	Phi Delta Theta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
qionsa8bvcc6fnwx7kvf	873581709	lnjuhl	Lauren	Juhl	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
lct9c5hagtethf9en7q5	552063535	jamesc22	James	Caldwell	Phi Kappa Psi		f	t	f	{Volleyball,"Educational Speaker",Basketball,"Polar Bear Plunge"}
h7o31f8bh9z64x857kfs	846383566	rsowings	Ryan	Owings	Chi Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
y7i801q9bknxzhy5tdoh	544232717	trosso	Taylor	Rosso	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
3r0hc3zwiw0t1u7zyryh	51766739	brodys	Brody	Stogdill	Chi Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
eea5mjaq4sv5k0ymviqr	218211028	bboyer	Brooke	Boyer	Delta Zeta		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Polar Bear Plunge"}
vdwpqqp6b5hcx87eiywj	709438758	mmainzer	Michael	Mainzer	Phi Gamma Delta		f	t	f	{"Educational Speaker","Lip Sync",Basketball,"Polar Bear Plunge"}
zqky894xk0bm5w83siok	439080642	morganb1	Morgan	Bruggeman	Gamma Phi Beta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
65zyxqmqudos4lkxc5a4	817136320	aborglum	Allison	Borglum	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ptdetlrudc2estuaw96x	201896722	jkgrote	Jessie	Grote	Gamma Phi Beta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
nipqxxsfm4mvw28ym645	237854637	abaumann	Ali	Baumann	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
bb343wzy2u6wb01x6yma	185029845	djacobi	Daniel	Jacobi	Beta Sigma Psi		t	t	f	{"Lip Sync","Educational Speaker",Basketball,"Polar Bear Plunge"}
xd7wki0pvx9gsxae3jeg	32573541	kabendon	Katie	Bendon	Pi Beta Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
bqebu4cbng4bpvfaay5y	653060408	hpw	Hannah	Williams	Pi Beta Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
6iax1egvz04ez6xnyqvf	95940873	ndehnel	Nicole	Dehnel	Pi Beta Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
yaoj361z3eaht9glq3jt	347993674	tstewart	Tom	Stewart	Sigma Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
e80xysb7u6do8vxw35k5	242016791	franzenr	Rebecca	Franzen	Kappa Delta		t	t	f	{Volleyball,"Lip Sync","Educational Speaker"}
eg90jiq8qu6iu3diniht	382037656	tylery51	Tyler	Young	FarmHouse		t	t	f	{}
01elbe6adhxg3mizdv1o	526179682	mss	Megan	Sturges	Kappa Kappa Gamma		t	t	f	{"Lip Sync"}
dxbr5etl89pytl8ys3rt	190846656	kirstenw	Kirsten	Wallace	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync"}
aoor8ucze5lvix5bf85m	827081315	hcheng	Haoruo	Cheng	Lambda Chi Alpha		t	t	f	{Dodgeball,Volleyball,"Lip Sync","Educational Speaker"}
3lbvdcse1f65o27s8utl	873347500	eaanders	Emily	Anderson	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
411xt0iow7hlf7hyduh5	233155923	wgarber	William	Garber	Pi Kappa Phi		t	t	f	{Treds,Basketball}
1qe3p9pfjx4dcs1dalud	340732392	bmdirks	Benjamin	Dirks	ACACIA		t	f	f	{"Educational Speaker"}
0fzh3ap2pieu4tkndqx6	125726625	jdiehl	Julia	Diehl	Kappa Kappa Gamma		t	f	f	{"Lip Sync"}
cg3zi21av70usrdjri3v	584028473	cptwinam	Colton	Twinam	Phi Gamma Delta		t	f	f	{}
d45c6nknt013bk673d1d	559726167	aliviam	Alivia	McCorkle	Kappa Delta		t	f	f	{"Educational Speaker"}
5lpf7hks00yk85n2xj11	228028801	tfrance	Tanya	France	Delta Zeta		t	f	f	{}
addy7krhuby7emcm7der	579832282	sophiab1	Sophia	Buscaglia	Kappa Delta		t	f	f	{"Lip Sync","Educational Speaker"}
y34vc2n9ea20yuexpx4t	821398578	kcortney	Kaylynne	Webber	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker"}
3fjz414bwaojd8p964nz	814782969	amcevoy	Andrew	McEvoy	FarmHouse		t	t	f	{Dodgeball,"Educational Speaker",Treds,Basketball}
8rggscuhdo6mg8qrzcz5	157142018	ljsuhi	Lauren	Suhi	Kappa Alpha Theta		t	t	f	{Dodgeball,"Educational Speaker","Lip Sync"}
y9vtx1il89rq8gw2hccg	589388831	akeen	Austin	Keen	Adelante		t	t	f	{Volleyball,"Karaoke 1st Cuts","Educational Speaker","Lip Sync"}
b5gtg517e8drypbiib3h	671087445	neaton	Nickolaus	Eaton	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync"}
vwoxicdfaqg9pkgca3df	128269173	woodbeck	Zachary	Woodbeck	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
k6iblunnl6kfn9ceitf9	427259890	lmmahnke	Laura	Mahnke	Pi Beta Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
i4caoj865o4o58xyqn4d	83440381	kmburr	Kaylin	Burr	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
bxu7oznfp7blnfauzfrh	48800824	tnv	Taylor	Vander Leest	Kappa Kappa Gamma		t	t	f	{"Lip Sync","Polar Bear Plunge"}
wun75ew57m6jkv2rzg3x	853098266	ojjacobs	Olivia	Jacobs	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
ivj161m25f0vpz5xm4em	813778986	hfeldman	Hunter	Feldman	Delta Upsilon		t	t	f	{"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
4vw5tkxos8iw2s8uvcde	713302611	megw	Margaret	Wolstenholm	Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
zdp7o69jnukfbk5tu5ls	626471846	rsletten	Rebekah	Sletten	Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
q5uo0tji61ddqz0qp42w	358398080	brandser	Hannah	Brandser	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
hq00htk231yu5tzou5op	349500171	eak	Emily	Krueger	Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
fo9h4oxp5d9hx1uz0r94	1494533	sabwaite	Sabrina	Waite	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
ttjz4zppivnuefblacib	180642462	abigail	Abigail	Schmitt	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
amwatzsx4hj3bp81infb	278557307	Cfeldman	Carson	Feldman	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
xtpwi05jyng464ilx8pl	562402872	jamies15	Jamie	Steffen	Kappa Alpha Theta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
ernmzwjtr714cu4yned1	812406676	cwolf	Charlotte	Wolf	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync",Treds,"Polar Bear Plunge"}
b2pfq3fbk8a84s39xm9w	650980346	aelamair	Anne	Lamair	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
q7trvvfvts6ooutgdmu1	983318361	doddsh	Hannah	Dodds	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
enexnzs0ixse3jcs6222	532148645	rmorano	Rayna	Morano	Delta Zeta		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Polar Bear Plunge"}
wn3gwkzu3hiky2r4lypr	432416257	masx21x	Mason	Schroder	Sigma Chi		t	t	f	{"Polar Bear Plunge"}
r0nv9g65dwx19wz4hin3	422948526	vdasilva	Victoria	Dasilva	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
r78wp5kp7bqpquh1stv6	656539884	saprobst	Sarah	Probst	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
x0xd7h1jqzxw9pasup7p	806535730	wjm45	William	Marshall	FarmHouse		t	t	f	{"Polar Bear Plunge"}
pi23cq93b1f4d79d0dbt	899009111	acmenke	Alexander	Menke	Phi Gamma Delta		t	t	f	{"Karaoke 1st Cuts","Educational Speaker","Lip Sync","Polar Bear Plunge"}
o1mf1dbj3wmr6e4vw1ed	542449936	Jss5	Joshua	Sarrafian	Phi Gamma Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
sgd3o69jft5im320l8fb	989860896	mheidgen	Maximillian	Heidgen	Sigma Phi Epsilon		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
ebfyr2w31alzo8fffdbw	703791088	ekarsten	Emily	Karsten	Gamma Phi Beta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge",Broomball}
sdqhtlm7uad6bk7a969o	590111542	asikkema	Alyssa	Sikkema	Pi Beta Phi		t	t	f	{"Educational Speaker",Basketball,"Polar Bear Plunge"}
oqk6q9khsr8hhowof5jx	864766934	rtmurray	Ryan	Murray	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
8vecs1fthm44ht3z12fv	700464792	kdurst	Karli	Durst	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker"}
yjz920w5skyxjxb4pqmr	809323515	amcginn	Alexandria	McGinnis	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker"}
83auwt521tfra0rirepm	654421768	mkbowers	Miranda	Bowers	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker"}
54bfiivx7ft2ao5rcezk	923959036	jralfs	Jaclyn	Ralfs	Alpha Gamma Delta		t	t	f	{Volleyball,"Lip Sync"}
688sovzgoshakufyhqj8	311112802	alexkin	Alexander	Kin	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker"}
drjykaadijttxyosn3wh	360077718	tallman	Steven	Tallman	Delta Sigma Phi		t	f	f	{"Lip Sync"}
uyrou31fz2knap4brfrq	801714986	ajjacobi	Allison	Jacobi	Gamma Phi Beta		t	f	f	{"Educational Speaker","Lip Sync"}
yf0vv2ff5vhgvded7kdo	8795859	soswald	Savannah	Oswald	Gamma Phi Beta		t	f	f	{"Lip Sync"}
j6i5vnoitynlfgu4cixb	74439409	jbratta	Joseph	Bratta	Phi Delta Theta		t	f	f	{"Lip Sync","Educational Speaker"}
3sgti413y4a3vy91gec4	803271494	bniemann	Brett	Niemann	ACACIA		f	t	f	{Dodgeball,"Educational Speaker",Treds}
9e948kooaq5y99dui7uk	743666924	mhendy2	Matthew	Hendrickson	Chi Phi		f	t	f	{"Educational Speaker","Karaoke 2nd Cuts",Basketball}
8sk8ecrnimwsmhswvz6t	208237053	akrame	Andrew	Kramer	Sigma Pi		t	t	f	{Dodgeball,"Educational Speaker","Lip Sync",Treds,Basketball}
p4asdv3bwuu5w5erq19n	175018844	ahennen	Alanna	Hennen	Alpha Sigma Kappa		f	t	f	{Dodgeball,"Educational Speaker"}
teckqymg14moh1i9ix7z	239126917	chloep	Chloe	Peterson	Kappa Kappa Gamma		t	t	f	{"Educational Speaker","Lip Sync"}
7ob5s6ga2yasu9c8cpto	605605021	jbhovden	Jake	Hovden	Alpha Gamma Rho		f	t	f	{"Educational Speaker",Treds}
whj2v0geh2nnc2224cw8	491179706	khalfpop	Kelby	Halfpop	Gamma Phi Beta		f	t	f	{Dodgeball}
ppvuenqsq474csyejwro	436021586	kgkalsch	Kelly	Kalsch	Alpha Gamma Delta		t	t	f	{"Educational Speaker"}
eepp3tsqb12lkx8p777z	79834755	salten	Sarah	Altenhofen	Alpha Gamma Delta		f	t	f	{"Educational Speaker"}
gc1d26cdkb4ihe17wbyr	320508188	vasishta	Vasishta	Angara	Alpha Sigma Phi		t	t	f	{Volleyball,"Karaoke 1st Cuts","Lip Sync","Educational Speaker"}
d4rq3bfjp6t9fncmlm1n	923641759	mcav	Madeline	Cavanaugh	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
q44fqkyjovvluzjq7pck	934953047	tschmitt	Thomas	Schmitt	Alpha Tau Omega		t	t	f	{Dodgeball,"Educational Speaker","Polar Bear Plunge"}
m6fiua68tkrny36l7g9z	974513572	aumanzor	Christian	Umanzor	Alpha Tau Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
eebtvqs4vq6btm247qcl	490211915	mcrocker	Matthew	Crocker	Sigma Pi		f	t	f	{"Educational Speaker","Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
ehscmcjwzc0jor0w3tni	939288350	metuttle	Madison	Tuttle	Alpha Chi Omega		t	t	f	{"Polar Bear Plunge"}
7ch2cjkz7caqzuqwtbw2	625120496	buehler4	Jennifer	Buehler	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
kor9ug427os9pzmqwxac	665844179	mkmuller	Megan	Muller	Alpha Delta Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
a943w84o8hpgw39049dx	746262549	rfrese	Rylie	Frese	Alpha Delta Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
ttx1l5tmd6d6id32ooo2	663659025	vlh	Victoria	Holthaus	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
u7w3k6ui8p0xlkx7g6vt	126040915	jameyer	Jacob	Meyer	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
tdedqqengd2f04r4ix46	533243711	aschlink	Ann	Schlink	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
fnsvhv9xp696tikzk826	118742649	mvpete	Michael	Peterson	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
dn76iqkau913304fetoc	700977297	smveach	Sydney	Veach	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
xvzxdmpyb9v1brtnzi6l	400797397	jwiemold	Jeffrey	Wiemold	Kappa Sigma		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
dmo2tavmsdqdxcxp2ibu	372008709	farrellc	Clare	Farrell	Alpha Gamma Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
09w1v3k8us9qqz8oopg9	207087909	tknutson	Tyler	Knutson	Sigma Phi Epsilon		t	t	f	{Volleyball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
rdjj5ofnuf6pnjlinizr	569253702	mmajors	Mallory	Majors	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
4jsni0qgsengz3akfk0n	755975220	spaulson	Sarah	Paulson	Kappa Alpha Theta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
mddj5jzlovjrckufzb1l	556932409	mheilsko	Madison	Heilskov	Delta Zeta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
9kp9pp6cabph6wpbmgqx	693222565	hholdahl	Hayley	Holdahl	Delta Zeta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
4q8jfkbdrztvcldrybnm	568943448	Schoenke	Michael	Schoenke	Adelante		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
rcz0gpm5weq5zof6rlo0	184596412	momalley	Margaret	O'Malley	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
qdwrxixspc736xduv9je	637506870	cfischer	Cassidy	Fischer	Gamma Phi Beta		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
h9nk8f6zsmvz83330pcw	652277691	rsbrandt	Ryan	Brandt	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
7on1buq8ancg1mmnl4ow	923027129	arhansen	Allison	Hansen	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
zct4ejtbue1hxyng3rs7	226544342	tdary	Taylor	Dary	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
s1swxqtouwyw8edhurhq	955344390	jnyeager	Jessica	Yeager	Kappa Alpha Theta		f	t	f	{"Educational Speaker","Lip Sync"}
vx7mowzbx0scjgz0w2uf	943841899	cabane	Chandler	Bane	Alpha Gamma Rho		f	t	f	{"Educational Speaker"}
pj3s2oa5gr9xgl3xlgdj	594692118	adsnyder	Addison	Snyder	Kappa Kappa Gamma		t	t	f	{"Educational Speaker","Lip Sync"}
zs6bm5fy0fk2gj24msa7	423402980	cortez7	Kaitlin	Cortez	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker",Treds}
onw9nhry4gi3n0qznk7d	871282412	psw	Phillip	Wenderoth	Pi Kappa Alpha		t	t	f	{"Lip Sync",Treds}
v96d64p01xmphr0actgg	273775502	mries04	Michele	Ries	Kappa Alpha Theta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
z3cu1zan2ym57vbltwkj	986598613	smdohmen	Stephanie	Dohmen	Kappa Alpha Theta		t	t	f	{"Polar Bear Plunge"}
jfua2jfxu4jrlql3jyi4	768723956	mhmccall	Mariah	McCall	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
6kspj6n44gu2z587vmsh	991430440	mma8	Margaret	Anderson	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
kcq6tnvt61vb9oi4epfd	490377905	feyer	Haley	Feyereisen	Delta Delta Delta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
17z41zbb4jz7zmrdh7yg	930028099	skrick	Sarah	Rickenbach	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
y1i4xg3c7593519ip6b6	565462898	etnelson	Erica	Nelson	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
3st5iw18j44h0v8oqidj	751481731	moreland	Hannah	Moreland	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
iie1amhf9mcpiuk84y13	366782416	ajcoenen	Amy	Coenen	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker",Basketball,"Polar Bear Plunge"}
wwi46ycfgl894iv04vo7	510668175	nmhuser	Nicole	Huser	Alpha Chi Omega		f	t	f	{"Polar Bear Plunge"}
qaanj2wj9jgxwxfjzcm9	739120409	aetemple	Ashton	Temple	Alpha Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
96xnry041go6uitgwa6o	347973626	slouras	Sarah	Rasmussen	Alpha Chi Omega		f	t	f	{"Polar Bear Plunge"}
gixlno7l9i088sg7zci7	757475719	arsmith	Addie	Smith	Gamma Phi Beta		f	t	f	{"Lip Sync","Polar Bear Plunge"}
wuuxk1ks7srfwo27oewr	718224547	hnmiller	Hailee	Miller	Sigma Kappa		f	t	f	{"Show Me The Greeks","Polar Bear Plunge"}
bk2pmxl8aznnasnc07yk	893858966	brianac	Briana	Campbell	Sigma Kappa		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
yqb3yyhl087iali1c5g2	772883111	areicks	Ashlyn	Reicks	Alpha Chi Omega		t	t	f	{Volleyball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
mpjjg95mqbswsjz85fux	113878797	bromank	Katelyn	Broman	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
c0a66qre36bv9shplqxc	413655266	jalutz	Julia	Lutz	Alpha Chi Omega		t	t	f	{Volleyball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
djwvbo2rbbkl9yo4csnw	171563392	alhill	Alyssa	Hill	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
olvbag820ba236fvwvih	406815437	nweidner	Natalie	Weidner	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
j2qc82dsy85z9jnlfktk	894131238	brendanj	Brendan	Johnson	Alpha Tau Omega		t	t	f	{"Lip Sync","Educational Speaker",Basketball,"Polar Bear Plunge"}
ugmwoi8m592rsdhxo4sh	519140642	tferg97	Trevor	Ferguson	Alpha Tau Omega		t	t	f	{"Polar Bear Plunge"}
t4juu9xhgm91fj7wn1p7	606202625	szarling	Steven	Zarling	Alpha Tau Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
kjho2vwgl29hjuwcbe70	173849700	mmoen	Mitch	Moen	Alpha Tau Omega		t	t	f	{"Educational Speaker",Basketball,"Polar Bear Plunge"}
enjlpkobnhfqllq1s9ja	923004113	jlittman	Jordan	Littman	Alpha Tau Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
kme66vlln06hids3ksb0	666881215	aawilson	Andrew	Wilson	Alpha Tau Omega		f	t	f	{Treds,"Polar Bear Plunge"}
9y2c4axql9ynrckumb9q	53000972	nsabin	Nicholas	Sabin	Alpha Tau Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
o4gutvb514hjjchvsv6j	387483124	timwhite	Timothy	White	Alpha Tau Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
vrqn586pbyr3v14jdu0h	3187208	bychang	Brian	Chang	Alpha Tau Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
327yfkcqvy3as1181fog	998304352	amcubit	Andrew	Cubit	Alpha Tau Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
desfdvxgthl47zpbohvp	232264032	mbulanda	Matthew	Bulanda	Alpha Tau Omega		f	t	f	{"Polar Bear Plunge"}
5nzecwv2a4gg30kdoing	510543053	rmhecker	Ryan	Hecker	Alpha Tau Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
3x7ly40uegu61wbkex6r	697506834	mpbenson	Michael	Benson	Alpha Tau Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
i0kwso2ydo8mno5fvv1n	174966820	qenno	Quinn	Enno	Alpha Tau Omega		f	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
rw4aifwefay3q6710sa7	443658283	alawless	Austin	Lawless	Alpha Tau Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
cb76j5uag07zxkc8qwr5	771508738	kspeer	Katie	Speer	Sigma Kappa		t	t	f	{"Polar Bear Plunge"}
fj02ahgrp96pyfr8eije	568286743	anfinson	Marisa	Anfinson	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker",Basketball,"Polar Bear Plunge"}
uz9hrw1wlgdihi35aswc	668904236	jsantoro	John	Santoro	Pi Kappa Alpha		f	t	f	{Volleyball,"Polar Bear Plunge"}
32yh1l3lljj9p2bt5l58	381304945	wilsonmc	Michael	Wilson	Alpha Tau Omega		t	t	f	{Volleyball,"Show Me The Greeks","Educational Speaker",Treds,"Polar Bear Plunge",Broomball}
ux7zl66srgvar24favau	306220915	abbeyh	Horsman	Abbey	Kappa Kappa Gamma		f	t	f	{Basketball,Broomball}
8v2mwct3oi2jxbgcso4x	787427641	fairhead	Kortnee	Fairhead	Sigma Kappa		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
koehm7wavzmv34gp6uy3	679339692	kgpeck	Katharine	Peck	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
bugu2bg1r29gl0ajj789	695244574	krfisher	Kaitlin	Fisher	Sigma Kappa		f	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
v4kyz34oj40k5y7ncrki	355330010	tahalmon	Timothy	Halmon	Kappa Sigma		t	t	f	{"Polar Bear Plunge"}
wl9dwinvtbfvnuygd5f3	787109323	adehaan	Ashley	De Haan	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
z6627ta3nypzkbqfzur9	929017089	annikam	Annika	Mikkelson	Alpha Omicron Pi		f	t	f	{"Polar Bear Plunge"}
y94474hki4efyo48swsw	126540414	briscuso	Miranda	Briscuso	Alpha Omicron Pi		t	t	f	{Dodgeball,"Polar Bear Plunge"}
579y43woar4o934yba00	863246384	mmburden	Morgan	Burden	Delta Upsilon		f	t	f	{"Polar Bear Plunge",Broomball}
ducca72y7cmt8w5qbytv	630144552	ltgordon	Lindsay	Gordon	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
he0mi1daoi5chhsut86e	944871928	qgoodman	Quinn	Goodman	Alpha Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
11digrtryut4bgxmiivr	619417827	knguyen8	Kristen	Nguyen	Alpha Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
9y7vs8vbqig0o0gewl4s	724059395	bntuttle	Brianne	Tuttle	Alpha Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
23cbtea43fte7cxxe66a	774074353	wendy2	Wendy	Cardwell	Alpha Chi Omega		t	t	f	{"Polar Bear Plunge"}
o1y7qctkkv3mxr1zbfop	793330567	ajvens	Abigail	Vens	Alpha Chi Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
7glknq1wkw1y548u4beq	511616136	erraney	Erin	Raney	Alpha Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
lu74lt94ewrdkipqkvqv	327712385	cln1	Courtney	Norelius	Alpha Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
fnqiazkqtoh5clc94x4q	393630237	brycew	Bryce	Wulfekuhle	Delta Upsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
ger15wsjlavpyupdamkp	867359493	mjsearls	Michael	Searls	Alpha Tau Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
bzys3ls89r7xxeft806w	977058102	derekg1	Derek	Gushiken	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
if25kfctvbuo9jnexshv	463146684	mboyce	Micaela	Boyce	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
2e6fv55ntgezhupf0c6x	423845422	nketchen	Natalie	Ketchen	Gamma Phi Beta		f	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
xi0zzl3bvzf0ifdinfly	930690761	cpduff	Charles	Duff	Sigma Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
q0w3qib7ersk2cx0fby9	420892577	jjlouis	Jessica	Louis	Kappa Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
7nadr3oftr4eo8kvve7w	588921361	kmj1	Kaitlyn	Johnson	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
pwa4yq7lzmet4fy4ipam	962375438	eckenrod	Haley	Eckenrod	Alpha Delta Pi		f	t	f	{"Lip Sync","Polar Bear Plunge"}
hoi92lqrfo8ldu2atkmu	230436629	khoffman	Kyra	Hoffman	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
8p560z6qxj7jqwwvcqx8	106233151	htcole	Hayden	Cole	Delta Lambda Phi		t	t	f	{Volleyball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
t551md6jnzhwd4eufu1l	985923939	klhemken	Kathryn	Hemken	Kappa Alpha Theta		f	t	f	{"Polar Bear Plunge"}
eupybmksoxb06j1m0pg1	622735134	jpkrile	Jack	Krile	Sigma Pi		f	t	f	{Treds,"Polar Bear Plunge"}
ekoi3sptbzp6lekfk50m	716376661	mlsauer	Madison	Sauer	Kappa Kappa Gamma		f	t	f	{"Polar Bear Plunge"}
5iyexvppyj1rf7sqh8vs	673955282	jbahnsen	Joseph	Bahnsen	Alpha Kappa Lambda		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
83wyon17iwa3isszjtny	936872937	sahammer	Seth	Hammer	Sigma Pi		f	t	f	{"Polar Bear Plunge"}
pdj6tj5nzw6wqhql9yqe	533228725	k10yes	Kayla	Toennies	Alpha Delta Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
jlrbh9kx6ww7zh3p78o3	41611570	bednarko	Anna	Bednarko	Pi Beta Phi		f	t	f	{"Polar Bear Plunge"}
rd7rp7bczxfs1d3pmfb6	458308879	jhpincus	Jack	Pincus	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
4b9fun63jdtq5ln7pe98	124509385	bmo	Bailey	O'Donnell	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
dhtkv82hk8ifeesvmevk	267542275	amelia	Amelia	Fitzgerald	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
mqglcpnbg7bwrdgjio7w	202266085	mkcrow	Marlyssa	Crow	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
78wsk3nte0f2llndisth	47096082	kmiller	Kayla	Miller	Alpha Delta Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
gzi7grj7y37resrjj85l	658826192	mniehoff	Mason	Niehoff	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
uzzkcmohlzjjlwebd0v9	359048710	ericb97	Eric	Bergquist	Phi Gamma Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
rkcxxpfvwwevs1aizc7i	857762906	westlake	Aubri	Westlake	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge",Broomball}
ema5nrqcf6iove29h88i	38331293	blyons	Bailey	Lyons	Kappa Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
pk40dfnagydxeesmnwzv	192201124	arble	Alyssa	Arble	Alpha Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
grlisydrnj13a09w3vvk	839959120	emmap	Emma	Peterson	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
9yekdbileyv4bxu6hco3	453648195	erbird	Emily	Bird	Alpha Delta Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
uc6czkpevrszo6zvvy9q	151475324	sswanson	Sydney	Swanson	Alpha Delta Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
rt5ugqxgjmnsyncqvdxn	383878515	atheisen	Allison	Theisen	Alpha Delta Pi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
0dzwxpcc9fsmfledil21	336642306	cardamon	Nicholas	Cardamon	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
ofy8ubgtwrg5okn7tmn4	51998947	amorelli	Anthony	Morelli	Sigma Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
65abv3lobvsziw7bdtzf	122410313	taydanh	Taylor	Nguyen	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
0nd2lzya2lx0xdq2t6pa	328873569	jsigmon	Jennifer	Sigmon	Alpha Delta Pi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
auuirkswif0opvf5uz71	924259364	KLPaeth	Kelsey	Paeth	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
sfsrb1cv69e434wk03jv	792101337	smewing	Shannon	Ewing	Sigma Kappa		t	t	f	{"Polar Bear Plunge"}
c1pugkmpoc6k1yuc6j04	490011534	msodwyer	Megan	O'Dwyer	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
tvwie0w155w3uhpa6n8v	255161942	mpholz	Michael	Holz	Kappa Sigma		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
afkr37swer7h9fgb0wo6	447116670	jefarmer	Justin	Farmer	Sigma Phi Epsilon		t	t	f	{Volleyball,"Lip Sync","Educational Speaker",Basketball,"Polar Bear Plunge"}
fkxyhyw0n2sle6sryk0w	871765895	ctjudd	Connor	Judd	FarmHouse		t	t	f	{"Lip Sync",Treds,"Polar Bear Plunge"}
tfouicoc7k93ouyh5ssd	535464954	colin	Colin	Thomson	FarmHouse		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
anjcy824hhko65p6gkee	279591339	tclem	Thomas	Clem	FarmHouse		t	t	f	{"Polar Bear Plunge"}
gh350tod4e15j8k8y2gd	953715763	ckoener	Christopher	Koener	Sigma Pi		f	t	f	{"Polar Bear Plunge"}
2mpnc135q0ixx6027npx	716376686	amadoniA	Angelo	Madonia	Theta Delta Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
am6jivryduedioajq6d8	57544512	jvkesler	John	Kesler	Theta Delta Chi		t	t	f	{"Educational Speaker","Lip Sync","Trivia Blast","Polar Bear Plunge"}
yxqdz4jkdwz0y2dmx4d5	79131052	connorf	Connor	Farrell	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
gzc1osx2koyv6gnwkg3e	34372366	crudolph	Catherine	Rudolph	Alpha Delta Pi		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Karaoke 2nd Cuts","Polar Bear Plunge"}
o3btzygisfza67fagl9x	968258315	kaclark	Kaitlin	Clark	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
gq0p445gu7jareogx5bc	841229389	hnpeters	Hanna	Peters	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
nik3qwmfy5kz13jf15g1	142565455	rdhuhn	Riley	Huhn	FarmHouse		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
l9ofhwqeacq9q4hj5cg8	201064864	hmdewey	Hannah	Dewey	Alpha Omicron Pi		f	t	f	{"Polar Bear Plunge"}
0b15ty8w2rc0j00dqd8u	211158948	gstaiert	Geena	Staiert	Alpha Omicron Pi		f	t	f	{"Polar Bear Plunge"}
y0zx06e5sbf5hhc0ejwq	300576300	jdmayo	Jonah	Mayo	FarmHouse		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
7p43dczv7n3wcv14iw26	760946218	klarsson	Katherin	Larsson	Alpha Omicron Pi		t	t	f	{"Polar Bear Plunge"}
0rve1wsnxnvd3703l7l2	439813394	kj6221	Krysta	Johnson	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
e4j09vnrdyrulkgxkt5c	782412655	albutler	Aaron	Butler	FarmHouse		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
2bmm6f85ya9fnerguksa	458788358	snford	Shayna	Ford	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
mm5lno8k7lqxv9c0ykd7	15291303	jschmitz	Joshua	Schmitz	FarmHouse		t	t	f	{"Lip Sync",Treds,"Polar Bear Plunge"}
9mvyt6inspxqoujo23hu	797030269	sara456	Sara	Larson	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
i5dgzux1aam41sluz7t7	590522002	dmrozell	Dana	Rozell	Alpha Omicron Pi		t	t	f	{"Lip Sync",Treds,"Polar Bear Plunge"}
u93pfwdy8urv9lsq72vi	510064600	ambermm	Amber	Meyer	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
vmrupyu989q0rtsut3f9	663457819	csantana	Cristina	Santana	Alpha Omicron Pi		t	t	f	{Volleyball,"Polar Bear Plunge"}
0l2aeusbv8aj27l0gdwi	875245431	trjensen	Trevor	Jensen	Phi Delta Theta		t	t	f	{"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
m9hg81nyvc493z9h8kll	780652873	schulte	Kelli	Schulte	Alpha Delta Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
mttrus0jtqpv2w36ul0w	565203695	davida	David	Anderson-Calderon	Tau Kappa Epsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
a34y6hes89q0bw8h7kun	674709035	secox	Stephanie	Cox	Alpha Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
roumzesxzzpopks3xtb0	32564532	efeldman	Ella	Feldman	Alpha Gamma Delta		f	t	f	{"Polar Bear Plunge"}
t0e363mrh8x75qva2rt1	219151965	emccoy	Elizabeth	McCoy	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
42qzmdu2jjugvj4w6v4y	975193219	cebrown1	Catherine	Brown	Alpha Gamma Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
zza9ydohsbs0vwb1oe5d	916612697	rmholt	Rachel	Holt	Alpha Gamma Delta		t	t	f	{"Karaoke 1st Cuts","Lip Sync","Educational Speaker","Polar Bear Plunge"}
hrdmwk9qexvgfgwcop8c	325919619	alking	Alexandra	King	Alpha Omicron Pi		t	t	f	{Dodgeball,"Lip Sync","Educational Speaker","Polar Bear Plunge"}
0oswi3cyyxlziie1dxw8	410918508	kristen2	Kristen	Turnquist	Phi Beta Chi		f	t	f	{"Lip Sync","Polar Bear Plunge",Broomball}
u4wxd18qsjrne05moe0w	111060950	miboler	Megan	Boler	Pi Beta Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
g4gm9mhd0h31tvcf9rsc	650528907	brheaton	Bellamy	Heaton	Alpha Gamma Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
634waibphy2nn1rky876	595312746	dorothy	Dorothy	Weaver	Alpha Gamma Delta		f	t	f	{"Polar Bear Plunge"}
7ph4gjc1cqaaj0arr7c3	670039370	mstoufer	Mason	Stoufer	Alpha Delta Pi		f	t	f	{"Karaoke 1st Cuts","Karaoke 2nd Cuts","Polar Bear Plunge"}
98rjqyinwvv8lnyxav7i	656284629	hvc	Heather	Crandall	Sigma Kappa		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
gtclk93w7hfn0otsjw3k	510729232	bpharvel	Benjamin	Harvel	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
crgbill4voq06hbaj7sl	571481990	lucyhern	Lucille	Hernandez	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
aqwkoxn2nd34jwif88j2	383939556	ceichler	Edward	Eichler	Kappa Sigma		f	t	f	{"Show Me The Greeks","Educational Speaker","Trivia Blast","Polar Bear Plunge"}
fhcrvlqahxah93in5z9e	497404935	mcurran3	Mark	Curran	Kappa Sigma		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
cue3g7r8agbp60lkymfs	872983111	bphayes	Bryton	Hayes	Kappa Sigma		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
qtwtj59chbpobwzqp104	139703564	atluke	Andrew	Luke	Kappa Sigma		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
o91yy33qfi0zx7gcu9aw	374227854	mattbeth	Matthew	Beth	Kappa Sigma		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
ntftcqkv1fmebvjk6hsv	777427651	millhuff	Robert	Millhuff	Sigma Pi		f	t	f	{"Polar Bear Plunge"}
gihghrs5dch0kdffxqmx	448144774	justinj	Justin	Jeziorski	Kappa Sigma		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
a37u5fwssudfyv4uvyc9	782470689	abrayboy	Anysia	Brayboy	Alpha Phi		t	t	f	{"Polar Bear Plunge"}
skwofecg1hqyona4sxxi	243204994	rdescoto	Raquel	d'Escoto	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
e0w4vr0hllrg7zrp1qf7	559841294	laguzman	Lara	Guzman	Chi Omega		f	t	f	{"Polar Bear Plunge"}
njsl23ahxmarqaht4g2x	752316565	droth	Dylan	Roth	Sigma Phi Epsilon		f	t	f	{Treds,Basketball,"Polar Bear Plunge"}
zyr55mwausgz6bv45d0t	817280488	bmdoll	Brittany	Doll	Delta Zeta		f	t	f	{"Polar Bear Plunge"}
11s8rc091r6wdkh2xna4	549086603	bhenders	Brianna	Henderson	Alpha Phi		f	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
bfd7h8e2t53zp5lmc453	900119220	josiemb7	Josie	Brownmiller	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
xn4jug2nxdn665ffxtnm	205555482	chelso	Chelsie	Oberbroeckling	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
eduwcw5si5qadfrc4xlg	350682360	aburns	Annie	Burns	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
4b4vmngtn35a391nl0vb	353193841	ncwillse	Nicole	Willse	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
u7p4pkrf223quyotkv5o	957197274	bmonroe	Brianna	Monroe	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
kveppnmlqsbyy7umaswm	650205556	mprince	Mikalen	Prince	Chi Omega		f	t	f	{"Educational Speaker",Basketball,"Polar Bear Plunge"}
56es4kxarbj29qcksaqt	119077959	lmf	Lauren	Fasching	Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
ua3kkautaa4odcdoq08q	765789048	mjlubben	Matthew	Lubben	Delta Upsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
cv7495a7gfjqkpgror4n	781411631	jrickert	John	Rickert	Alpha Tau Omega		t	t	f	{Volleyball,"Polar Bear Plunge"}
wtesqdz9taf78fdwy7zv	371715373	mdykstra	Madison	Dykstra	Kappa Kappa Gamma		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
nd4rr890xuxvvahyv7n1	85250165	mfhenry	Madeline	Henry	Alpha Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
hk2he4a11p2jsqxl4uj7	559560001	sstephan	Scott	Stephan	Delta Upsilon		t	t	f	{"Lip Sync","Polar Bear Plunge"}
2eqk6a73pxjfx7vov2ky	785566782	jnromero	Jorge	Romero	Delta Upsilon		t	t	f	{"Show Me The Greeks","Lip Sync","Educational Speaker","Trivia Blast","Polar Bear Plunge"}
kily8vyuwtdnmusb4rgl	701233533	ksato	Keisuke	Sato	Delta Upsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
2q27ymwolikim216hqia	101128027	kemohr1	Keaton	Mohr	Delta Upsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
kuzb9fd7fhsegshhon9y	268946707	srwalker	Samuel	Walker	Delta Upsilon		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
4kivz16wqxrt09dh4369	865391527	hattouni	Kaitlin	Hattouni	Chi Omega		t	t	f	{"Lip Sync","Polar Bear Plunge"}
hnpafnrs0asb56040ag1	156664660	clairem	Claire	Michelson	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
wu7i7hsmlv1uz84z9h7d	317975658	ssherry	Sanika	Sherry	Chi Omega		t	t	f	{"Lip Sync","Trivia Blast","Polar Bear Plunge"}
sb0cpcvsf2u7g4vpnoje	804086311	kagohr	Katherine	Gohr	Chi Omega		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
7bec1jv0m59a6dgl2vda	108888803	smmiller	Sarah	Miller	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
y5mcrty34olh4rly8tha	672675030	kbassett	Kimberly	Bassett	Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
wjd8ew5u0fmr4qu2scmz	693372708	alexg100	Alexandra	Gradisher	Chi Omega		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
itqm5vqeap4uqkwottou	836989182	mlsmith	Mallory	Smith	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
k1lkhjn8uvmgh5r17u2f	904822951	danlesp	Daniel	Lesperance	Lambda Chi Alpha		t	t	f	{"Trivia Blast","Polar Bear Plunge"}
cajbhoqd0hipmtub3gvn	329520191	jotto	Jason	Otto	Sigma Phi Epsilon		t	t	f	{"Polar Bear Plunge"}
s77i3x9tm44oputcyyxo	37262254	alkinnes	Alexandra	Kinnes	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
a7wdesqwpuo9ezhtaddb	260131872	eshane11	Ellie-Michael	Shane	Chi Omega		t	t	f	{Dodgeball,"Educational Speaker",Treds,Basketball,"Polar Bear Plunge"}
www3tv8l8x9vx117s1qi	47420373	colosimo	Natalie	Colosimo	Delta Delta Delta		t	t	f	{Volleyball,"Educational Speaker","Polar Bear Plunge"}
mrfw5z4vdx5qcqwf3mkl	571363793	bcruggle	Blake	Ruggle	Lambda Chi Alpha		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
m8drohwrp4jqkgtxl1r7	422343946	nrwiens	Nicholas	Wiens	Sigma Phi Epsilon		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
lfzqfloibe8fhyf12dft	868915075	bmwright	Brandy	Wright	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
8dxh9zeo0dmiyc83txpi	992670711	conorm	Conor	McCormack	Pi Kappa Phi		t	t	f	{Dodgeball,"Polar Bear Plunge"}
l2l16rh0q30c2wuve44w	278219942	eay	Elizabeth	Young	Chi Omega		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
jla1lotz5uce2or6cvdf	772357586	acdoud	Anna	Doud	Chi Omega		f	t	f	{"Polar Bear Plunge"}
tqgtaselsdqb1fm6oect	997782786	pwhitney	Paige	Whitney	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
5vabramwv775pszo7hoe	277364087	aagbokou	Akofa	Agbokou	Alpha Omicron Pi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
ls5pingje84byxt2zmug	592768199	jpham	Julie	Pham	Alpha Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
a1pkiuaxl57sm6n377z5	709000339	mjordan	Mackenzie	Jordan	Kappa Kappa Gamma		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
jlc03iqtboj6s9tcgnhv	907233327	mvm	Mallory	Marshall	Chi Omega		t	t	f	{"Polar Bear Plunge"}
uj7lbisfc271ogt2d7t0	25064063	sperlich	Shelby	Sperlich	Sigma Kappa		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
q3i374zp3sa2hvh387kk	831056226	jmurick	Jenna	Urick	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
zz2sx43pj22rr0lqey88	260782522	cmeyer38	Christopher	Meyer	Phi Kappa Psi		t	t	f	{"Polar Bear Plunge"}
hd62ueoyjwa9tvps73i8	166293151	ska	Samantha	Anderson	Delta Delta Delta		t	t	f	{Dodgeball,"Lip Sync","Polar Bear Plunge"}
2hlkt6iihsr7rehuizhh	954346436	caj19	Courtney	Johnson	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
yn3fsxvhqti7ht4ia9z8	797933171	rfurio	Rocco	Furio	Theta Delta Chi		t	t	f	{"Educational Speaker","Lip Sync",Basketball,"Polar Bear Plunge"}
8xqp4ktbxzecgd43gxoe	652751119	talleven	Thomas	Alleven	Phi Kappa Psi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
touw32f0weronwyqbnt4	810130344	mvekony	Megan	Vekony	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
hpwn0capv43wa150qym2	858553724	lbalkema	Lauren	Balkema	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
hjpto0rvl6ctns66067k	490153681	aritzman	Alexandria	Ritzman	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
mgxdwup2fm9uy0146o3q	97332259	sburris	Samantha	Burris	Delta Delta Delta		t	t	f	{"Lip Sync","Polar Bear Plunge"}
ynm6tf3odx6n1rahlncb	859878044	tylermc	Tyler	Carlson	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
45mrwqlv7qzenonjnqme	511104622	eblom	Emma	Blomquist	Delta Delta Delta		f	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
8bx7auwnv1gudz6hs1gq	633216584	singbush	Blake	Singbush	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
4eqcka85ziwj0rarf675	675033383	alev	Alexander	Lev	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
soyyd88b5jkvfesg8ejm	903391489	jrgast	Joseph	Gast	Phi Kappa Psi		t	t	f	{"Lip Sync","Polar Bear Plunge"}
qckm755udkk5ibl9pii1	258495265	jsillman	Jordan	Sillman	Phi Kappa Psi		t	t	f	{"Karaoke 1st Cuts","Polar Bear Plunge"}
8wd89e3xh972x3nbnajp	205537332	chirhart	Danielle	Chirhart	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
avx30m8t098ai1f4j1nn	217374181	akain	Ashlee	Kain	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
vesb5blvu2oe7qtpu9qj	723476754	khackman	Kristen	Hackman	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
tykmnh4ef7wiqv60zb6v	613693108	jrv1	Jeanette	Van Zomeren	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
8ze5hi1tf52uvym3qack	646957334	csmiller	Craig	Miller	Sigma Chi		f	t	f	{Basketball,"Polar Bear Plunge"}
glm1a9fvd1b4soin8gm8	246824578	Pkrano	Philip	Kranovich	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
jknvnsepx7hhiyj4y540	510433941	brkuhl	Bailey	Kuhl	Delta Delta Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
u0saz73op0vyqvg486a7	679764085	maconrad	Mitchell	Conrad	Phi Kappa Psi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
epsx88y0446vx1u5p9ai	574511005	bgsholl	Brittany	Sholl	Delta Delta Delta		f	t	f	{"Polar Bear Plunge"}
7v2hpwkk2hfo4dlcpgn6	322094846	bedert	Tyler	Beder	Chi Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
2u8slfzw0wn04tsufrml	367624284	toripavs	Tori	Pavillard	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
5zb8uzxdba5hv4n0n2kz	148953805	shindoll	Allison	Shindoll	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
camm3nut4uvifvtpskxj	732058327	pashirk	Paige	Shirk	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
8grtgoav9kg36o9yfhkm	906662757	brennanb	Brennan	Borgestad	Phi Kappa Psi		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
mtz6ngkv37r89j36bqxv	783162380	mbecker	Michelle	Becker	Alpha Omicron Pi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
xe5q7djs5nytyv16cobg	520148653	ecfinn	Emma	Finn	Delta Delta Delta		t	t	f	{"Polar Bear Plunge"}
nypw9h08fxtz4kip9pl9	532878363	rko	Riley	O'Donnell	Delta Delta Delta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
z2e9u9k1o1r4y3rmtye1	878586737	kbuscher	Katherine	Buscher	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
6brvno4czx4yosnyewas	265165921	bksull	Barbara	Sullivan	Delta Delta Delta		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
qbm264rwrpzbb5rmkujq	75690688	mkryan	Molly	Ryan	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
pe9y0sg66bt2d6twku97	237078878	ahill	Allison	Hill	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
9k33wl5y9z5aehcbvqhh	659767108	ahall	Anna	Hall	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
hzl7uu31m8tjbyj2q6dk	351976625	cserowka	Christine	Serowka	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
e1ozu6y7ytkmsc521nrp	367153815	kcorbin	Kennedy	Corbin	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
khj3j7141o6k8khfpmlo	334133800	sbortle	Samantha	Bortle	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
mcftnama3jyf326uloqe	396263868	tdjude77	Thomas	Jude	Sigma Chi		f	t	f	{"Educational Speaker",Treds,"Polar Bear Plunge"}
j6wa59k0s7q3a9llytxh	688423736	tjgiroux	Thomas	Giroux	Sigma Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
4x061y9zr7dab3y52bcp	331991691	samuels2	Samuel	Schaecher	Sigma Chi		f	t	f	{"Polar Bear Plunge"}
r5zk777d94q4ahqcjer2	611339793	morgang	Morgan	Greenstreet	Delta Zeta		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
higkki9uj3k8bj4th5l1	656555929	clfay	Courtney	Fay	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
efv9p6fpdlznoazmbtyo	913357480	lannied	Lannie	Daughton	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync",Basketball,"Polar Bear Plunge"}
q1e4pu579mmlai327vg9	683786132	gabby	Gabrielle	Weatherwax	Delta Zeta		f	t	f	{"Lip Sync","Polar Bear Plunge"}
0a7v4xp4u2b151wvrc3s	925600676	jamierix	Jamie	Rix	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
4ju2c5oa5cisq4dl6rq1	607151545	lindorff	Lauren	Lindorff	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
h86ga022p1xm7ra4hojm	516601117	maychau	May	Chau	Alpha Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
x6nc6gtwdgpa4srfxcrr	154395241	vanroej	Jacob	Vanroekel	Adelante		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
6wj6luhhcz9affh828df	698387690	mankinc	Cory	Mankin	Alpha Kappa Lambda		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
arrxxmycafex184m25mg	977820844	cjkeller	Clayton	Keller	Adelante		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
p2jd70siv96w4je42w6s	463191729	jling95	Justin	Ling	Alpha Kappa Lambda		t	t	f	{Volleyball,"Show Me The Greeks","Educational Speaker","Lip Sync",Basketball,"Polar Bear Plunge"}
13p739ruhq08h5rruueo	995815853	jsw1997	Jonathon	Williams	Phi Kappa Psi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
67s6wl1f95cl69x4avm4	906703822	maliknew	Malik	Newson	Alpha Kappa Lambda		t	t	f	{"Karaoke 1st Cuts","Educational Speaker","Lip Sync","Polar Bear Plunge"}
fx2lxv5ccawtffe2q9av	288720461	keichorn	Kenneth	Eichorn	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
vdeptle4zpm9itghmb4m	963471509	rmbraun	Ryan	Braun	Sigma Chi		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
spx4ohnw97byzr3l7nae	834572739	jrruddy	Jake	Ruddy	Sigma Chi		f	t	f	{"Educational Speaker","Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
wema0c0xpbzfq9raavti	64779715	mdcullen	Marshall	Cullen	Sigma Chi		f	t	f	{"Educational Speaker","Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
0dv08sltugll48lfvhp3	61665604	bdguido	Brian	Guido	Sigma Chi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
v0s95rdtfn3ozq38w0e7	218845655	clennes	Caroline	Ennes	Alpha Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
6afx1mb846j9hx4cr9j7	819307517	bhtoman	Brian	Toman	Phi Gamma Delta		t	t	f	{Dodgeball,"Show Me The Greeks","Educational Speaker","Polar Bear Plunge"}
1er4otqzc2dlteju1bmn	997847851	atack	Allyson	Tack	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
bc9beqv7c046wnq89ad5	255742511	wjcuroe	William	Curoe	Sigma Chi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
3ofimve25i2nlkvoha5j	451614163	nhallman	Natalie	Hallman	Delta Zeta		f	t	f	{"Lip Sync",Treds,"Polar Bear Plunge"}
dag05a9af3khdylewe27	151962831	erduffer	Erin	Duffer	Gamma Phi Beta		f	t	f	{"Polar Bear Plunge"}
49ghq1g83cr0d5b33kfl	84605521	kccox	Kylee	Cox	Gamma Phi Beta		t	t	f	{Dodgeball,"Lip Sync","Polar Bear Plunge"}
mx4bwxsjnhhawksabscy	906176299	kdfisher	Karagan	Fisher	Gamma Phi Beta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
idsp032sbcaz29u16huy	298094830	acrivaro	Aubrie	Crivaro	Delta Zeta		f	t	f	{Treds,"Polar Bear Plunge"}
brylv3fjhe7n6yulb45j	448350931	Hrheying	Halle	Heying	Delta Zeta		t	t	f	{Dodgeball,Volleyball,Basketball,"Polar Bear Plunge"}
jdk6mdtk9gx75tk6fjko	418180791	lwyllie	Lauren	Wyllie	Delta Zeta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
ky0nu8hvhbv4beze1i1w	118971853	ahyndman	Annamarie	Hyndman	Gamma Phi Beta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
fevpzwxb0bctwombt7vs	929199271	olivogel	Olivia	Vogel	Kappa Alpha Theta		f	t	f	{"Polar Bear Plunge"}
wr9x3bmqjinlkz3csr36	102233156	wpaul	William	Paul	Phi Gamma Delta		f	t	f	{"Polar Bear Plunge"}
mpmy11t61w735l4kmlg0	245449204	pgaffney	Patrick	Gaffney	Phi Gamma Delta		f	t	f	{"Polar Bear Plunge"}
kkewg67cbt1crrfykjb8	675169495	alexbarr	Alexander	Barrientos	Delta Sigma Phi		f	t	f	{"Lip Sync","Polar Bear Plunge"}
ov6bozgpllzg3qc1i03p	908183276	cthielen	Cassandra	Thielen	Kappa Alpha Theta		t	t	f	{"Lip Sync",Treds,Basketball,"Polar Bear Plunge"}
oud7uvbeveh8tpncisxd	394616222	ztaalman	Zachary	Taalman	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
sz61kg3qzs0d99tjdkbd	811349555	william1	William	Christiansen	Delta Chi		t	t	f	{Volleyball,"Lip Sync","Educational Speaker",Basketball,"Polar Bear Plunge"}
q36exldax94oxykhsjr8	691815124	jltaylor	Jessica	Taylor	Kappa Alpha Theta		f	t	f	{"Polar Bear Plunge"}
27ebqyak7587phw9b7su	956370439	jrcoder	Johnny	Coder	Delta Chi		t	t	f	{"Lip Sync","Educational Speaker",Treds,"Polar Bear Plunge"}
uyb7laejlqa4xin52bk4	107151071	jezegler	James	Zegler	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge"}
s1r2szc7xcdxgpm1ocx1	420960540	burklton	Riley	Burke	Tau Kappa Epsilon		t	t	f	{"Polar Bear Plunge"}
6nt14n36nx1ua9204u3b	741325610	crecker	Connor	Recker	Delta Tau Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge"}
979f2fe6dexzfwz4dl0f	842732891	kiar	Kia	Richards	Alpha Delta Pi		f	t	f	{Dodgeball,"Educational Speaker","Polar Bear Plunge",Broomball}
xh1r0vdf0yes8z1bw0wt	685199574	erikag	Erika	Grefsheim	Alpha Sigma Kappa		f	t	f	{"Educational Speaker",Treds,Broomball}
vyhimnqjow2in1433smc	931578715	njkieser	Nicholas	Kieser	Lambda Chi Alpha		f	t	f	{Dodgeball,Broomball}
gxso1zsv48uzccwi3elf	490621159	csanjuan	Cristian	Sanjuan	Chi Phi		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
38rzcilpj605z74u3xwm	959135177	rarognes	Reed	Rognes	Delta Tau Delta		f	t	f	{Volleyball,"Educational Speaker","Lip Sync","Polar Bear Plunge"}
5gf4m0oa4hx093c57rh0	242668426	jbbluhm	Jack	Bluhm	Delta Tau Delta		t	t	f	{Dodgeball,"Educational Speaker","Polar Bear Plunge"}
zowlnoy3vzoblz1aoywv	992533542	cpaulson	Christina	Paulson	Sigma Kappa		t	t	f	{"Educational Speaker","Lip Sync","Trivia Blast","Polar Bear Plunge",Broomball}
ndmx6hj76yeg5oxivfqq	812461650	baregan	Brian	Regan	Triangle		f	t	f	{Volleyball,"Educational Speaker",Broomball}
lhjon866wpz8he9n59hd	41333292	mjpircon	Michael	Pircon	Sigma Phi Epsilon		f	t	f	{"Polar Bear Plunge",Broomball}
j8lsp519abzai4sdp0v8	903382632	ragreen	Ryan	Green	Sigma Chi		f	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge",Broomball}
g7nk8kvrny2sp68gkju9	106261172	cjrau	Carter	Rau	FarmHouse		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
3sucnn28dbx2vxr9ws1j	706863185	bloreno	Braiden	Loreno	Sigma Chi		f	t	f	{Dodgeball,"Lip Sync","Trivia Blast","Polar Bear Plunge",Broomball}
mudfljax81as693t1w9j	280142899	mvoddo	Michael	Oddo	Alpha Sigma Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
zycbizl1deioq32dx5js	411702291	dacamp	Derek	Camp	Kappa Sigma		t	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
c5yei7i4jwnkflqcp8sy	699722023	buckner	Henry	Thompson	Alpha Sigma Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
57fk4tp6hutemi77j16n	642040399	peterm	Peter	Michalski	Kappa Sigma		f	t	f	{Volleyball,Broomball}
qhxruf6oqgo8wkkjzqe0	939083145	amedici	Amelia	Medici	Delta Zeta		t	t	f	{"Show Me The Greeks","Educational Speaker","Lip Sync","Trivia Blast","Polar Bear Plunge",Broomball}
a01hx23cabzd9cswoaee	845263443	tgibbons	Taylor	Gibbons	Delta Zeta		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge",Broomball}
tf5jq627w9sfjnxq4o45	510633142	lindsayj	Lindsay	Johnson	Chi Omega		t	t	f	{"Polar Bear Plunge",Broomball}
t9dpa6k6rse3zuquod0i	796480708	csbonar	Chase	Bonar	Alpha Kappa Lambda		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
slxlaq9vhyita4u6jymu	133277144	bcoulter	Bridget	Coulter	Alpha Omicron Pi		t	t	f	{"Lip Sync","Educational Speaker",Basketball,"Polar Bear Plunge",Broomball}
9e4l3jghu48j86x4n8wg	905785902	sefrey	Samuel	Frey	Phi Kappa Psi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge",Broomball}
oivakgkp12uq1q2ae1lm	926928002	tkovanda	Tyler	Kovanda	Delta Tau Delta		f	t	f	{"Educational Speaker",Broomball}
dusg351r5ilitl5wmsb7	187509343	nworrall	Natalie	Worrall	Pi Beta Phi		t	t	f	{"Educational Speaker","Polar Bear Plunge"}
4xgowugs94crj2rbkfe2	200416237	bsw1	Brandon	Wetterberg	Pi Kappa Phi		f	t	f	{"Polar Bear Plunge"}
z5dxly1c8vr5pxd7tvu7	437640203	jacinmy	Jacin	Yaukovitz	Phi Gamma Delta		f	t	f	{Volleyball,Treds,Broomball}
7qy2y7315j0mkebwokw3	723564842	narnold	Nicholas	Arnold	Phi Gamma Delta		f	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
s2gz80tfbi4hdr83ble2	42949931	lebeling	Lindsay	Ebeling	Pi Beta Phi		t	t	f	{"Show Me The Greeks","Lip Sync","Educational Speaker","Polar Bear Plunge"}
8q90tq8a0r1220r9lwi7	78912834	jconklin	James	Conklin	Sigma Pi		t	t	f	{"Educational Speaker","Lip Sync","Polar Bear Plunge",Broomball}
0oszjx6543tlo1vzsucw	322667345	skroan	Stephanie	Roan	Gamma Phi Beta		f	t	f	{Treds,Broomball}
9qzhvktfthelfdr1kecc	127282155	dustinh	Dustin	Herbert	Tau Kappa Epsilon		t	t	f	{"Educational Speaker","Polar Bear Plunge",Broomball}
zm6u5adcb22vlyk20xmi	799619846	edlohse	Emma	Lohse	Alpha Gamma Delta		t	t	f	{"Educational Speaker",Broomball}
bcyy8v2khvmd4ppao3hv	132213113	kkitral	Kevin	Kitral	Alpha Sigma Phi		f	t	f	{Dodgeball,"Educational Speaker",Treds,Basketball,"Polar Bear Plunge",Broomball}
m0w3ua40wmmosesd4uj5	919352458	jchicken	Jonathan	Chicken	Alpha Sigma Phi		t	t	f	{"Lip Sync","Educational Speaker","Polar Bear Plunge"}
zs46xm8kii3b6k3wif3j	400438038	ecosta	Emily	Costa	Pi Beta Phi		t	t	f	{Dodgeball,"Lip Sync","Polar Bear Plunge"}
r15enwsb1gyq0crhpk8u	71183221	tsanborn	Tyler	Sanborn	Pi Kappa Phi		f	t	f	{"Polar Bear Plunge"}
bt9s939uqy3jpdytble2	921479559	hward	Hannah	Ward	Chi Omega		f	t	f	{Broomball}
9nnye9lo9ui7k867tpo5	834702869	tpayzant	Thomas	Payzant	Theta Chi		f	t	f	{Volleyball,"Lip Sync",Treds,Broomball}
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: tomscallon
--

COPY teams (chapter, team_name) FROM stdin;
Kappa Kappa Gamma	3rd Termz the Charm
Delta Tau Delta	3rd Termz the Charm
Phi Beta Chi	3rd Termz the Charm
Delta Zeta	ACDZ
Sigma Chi	ACDZ
Adelante	ACDZ
Alpha Kappa Lambda	ACDZ
Kappa Alpha Theta	GREEKLINE BLING
Pi Kappa Alpha	GREEKLINE BLING
Theta Chi	GREEKLINE BLING
Alpha Gamma Delta	G.I. Greeks
Alpha Gamma Rho	G.I. Greeks
Phi Kappa Theta	G.I. Greeks
Alpha Sigma Kappa	G.I. Greeks
Kappa Delta	Kappa Phi Delta Chi
Phi Delta Theta	Kappa Phi Delta Chi
Delta Chi	Kappa Phi Delta Chi
Delta Delta Delta	Quad Squad
Phi Kappa Psi	Quad Squad
Triangle	Quad Squad
Chi Phi	Quad Squad
Alpha Delta Pi	Scream Team
Sigma Pi	Scream Team
Delta Lambda Phi	Scream Team
Alpha Chi Omega	The Greek Awakens
Alpha Tau Omega	The Greek Awakens
Beta Sigma Psi	The Greek Awakens
Gamma Phi Beta	The Olympians
Phi Gamma Delta	The Olympians
Delta Sigma Phi	The Olympians
Gamma Rho Lambda	The Olympians
Alpha Omicron Pi	The Omicron Empire
FarmHouse	The Omicron Empire
Kappa Sigma	The Omicron Empire
Sigma Kappa	The SKuad
Tau Kappa Epsilon	The SKuad
Theta Delta Chi	The SKuad
Chi Omega	The Young Pharaohs
Delta Upsilon	The Young Pharaohs
Lambda Chi Alpha	The Young Pharaohs
Pi Beta Phi	TriPhis
Alpha Sigma Phi	TriPhis
Pi Kappa Phi	TriPhis
Alpha Phi	USAΦ
Sigma Phi Epsilon	USAΦ
ACACIA	USAΦ
\.


--
-- Name: event_roster_pkey; Type: CONSTRAINT; Schema: public; Owner: tomscallon; Tablespace: 
--

ALTER TABLE ONLY event_roster
    ADD CONSTRAINT event_roster_pkey PRIMARY KEY (id);


--
-- Name: teams_pkey; Type: CONSTRAINT; Schema: public; Owner: tomscallon; Tablespace: 
--

ALTER TABLE ONLY teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (chapter);


--
-- Name: event_roster_chapter_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tomscallon
--

ALTER TABLE ONLY event_roster
    ADD CONSTRAINT event_roster_chapter_fkey FOREIGN KEY (chapter) REFERENCES teams(chapter);


--
-- Name: public; Type: ACL; Schema: -; Owner: tomscallon
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM tomscallon;
GRANT ALL ON SCHEMA public TO tomscallon;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

