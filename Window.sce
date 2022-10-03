demo_lhy = scf(100001);// Create window with id=100001 and make it the current one
// Background and text
demo_lhy.background= -2;
demo_lhy.figure_position = [100 100];
demo_lhy.figure_name= gettext("Integrais");
// Change dimensions of the figure
demo_lhy.axes_size = [680 192];
// Remove Scilab graphics menus & toolbar
delmenu(demo_lhy.figure_id,gettext("&File"));
delmenu(demo_lhy.figure_id,gettext("&Tools"));
delmenu(demo_lhy.figure_id,gettext("&Edit"));
delmenu(demo_lhy.figure_id,gettext("&?"));
toolbar(demo_lhy.figure_id,"off");

uicontrol("parent",demo_lhy, "style","text","string","Escolha a ordem", "position",[20,180,150,20],"horizontalalignment","left", "fontsize",14,"background",[1 1 1]);

control1 = uicontrol("parent",demo_lhy,'style','listbox',"string","dx|dydx|dxdy|dzdydx|dzdxdy|dydzdx|dydxdz|dxdzdy|dxdydz",'position', [20,20,150 160],"fontsize",14,"background",[0.9 0.9 0.9],"Callback","mostralayout","Callback_Type",10);


function mostralayout
    
aux=control1.value;
if (aux==1) then
uicontrol("parent",demo_lhy, "style","image","string","dx.png", "position",[240,50,500,160],"horizontalalignment","left", "fontsize",14,"background",[1 1 1],"visible","on"); 
liminf11=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[380,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf11","visible","on"); 
limsup11=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[400,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup11","visible","on");
expr1=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[385,120,50,30],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","texpr1","visible","on");
elseif (aux==2) then
uicontrol("parent",demo_lhy, "style","image","string","dydx.png", "position",[240,50,500,160],"horizontalalignment","left", "fontsize",14,"background",[1 1 1],"visible","on");  
liminf22a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[405,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf22a","visible","on"); 
limsup22a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[425,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup22a","visible","on");
liminf21a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[320,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf21a","visible","on"); 
limsup21a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[340,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup21a","visible","on");
expr2a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[410,120,50,30],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","texpr2a","visible","on");
elseif (aux==3) then
uicontrol("parent",demo_lhy, "style","image","string","dxdy.png", "position",[240,50,500,160],"horizontalalignment","left", "fontsize",14,"background",[1 1 1],"visible","on"); 
liminf22b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[405,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf22b","visible","on"); 
limsup22b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[425,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup22b","visible","on");
liminf21b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[320,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf21b","visible","on"); 
limsup21b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[340,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup21b","visible","on");
expr2b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[410,120,50,30],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","texpr2b","visible","on");
elseif (aux==4) then
uicontrol("parent",demo_lhy, "style","image","string","dzdydx.png", "position",[240,50,500,160],"horizontalalignment","left", "fontsize",14,"background",[1 1 1],"visible","on");  
liminf33a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[425,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf33a","visible","on"); 
limsup33a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[445,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup33a","visible","on");
liminf32a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[345,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf32a","visible","on"); 
limsup32a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[360,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup32a","visible","on");
liminf31a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[260,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf31a","visible","on"); 
limsup31a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[280,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup31a","visible","on");
expr3a=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[435,120,50,30],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","texpr3","visible","on");
elseif (aux==5) then
uicontrol("parent",demo_lhy, "style","image","string","dzdxdy.png", "position",[240,50,500,160],"horizontalalignment","left", "fontsize",14,"background",[1 1 1],"visible","on");  
liminf33b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[425,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf33b","visible","on"); 
limsup33b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[445,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup33b","visible","on");
liminf32b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[345,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf32b","visible","on"); 
limsup32b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[360,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup32b","visible","on");
liminf31b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[260,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf31b","visible","on"); 
limsup31b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[280,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup31b","visible","on");
expr3b=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[435,120,50,30],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","texpr3b","visible","on");
elseif (aux==6) then
uicontrol("parent",demo_lhy, "style","image","string","dydzdx.png", "position",[240,50,500,160],"horizontalalignment","left", "fontsize",14,"background",[1 1 1],"visible","on");  
liminf33c=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[425,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf33c","visible","on"); 
limsup33c=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[445,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup33c","visible","on");
liminf32c=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[345,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf32c","visible","on"); 
limsup32c=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[360,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup32c","visible","on");
liminf31c=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[260,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf31c","visible","on"); 
limsup31c=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[280,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup31c","visible","on");
expr3c=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[435,120,50,30],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","texpr3c","visible","on");
elseif (aux==7) then
uicontrol("parent",demo_lhy, "style","image","string","dydxdz.png", "position",[240,50,500,160],"horizontalalignment","left", "fontsize",14,"background",[1 1 1],"visible","on");  
liminf33d=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[425,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf33d","visible","on"); 
limsup33d=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[445,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup33d","visible","on");
liminf32d=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[345,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf32d","visible","on"); 
limsup32d=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[360,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup32d","visible","on");
liminf31d=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[260,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf31d","visible","on"); 
limsup31d=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[280,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup31d","visible","on");
expr3d=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[435,120,50,30],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","texpr3d","visible","on");
elseif (aux==8) then
uicontrol("parent",demo_lhy, "style","image","string","dxdzdy.png", "position",[240,50,500,160],"horizontalalignment","left", "fontsize",14,"background",[1 1 1],"visible","on");  
liminf33e=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[425,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf33e","visible","on"); 
limsup33e=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[445,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup33e","visible","on");
liminf32e=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[345,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf32e","visible","on"); 
limsup32e=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[360,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup32e","visible","on");
liminf31e=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[260,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf31e","visible","on"); 
limsup31e=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[280,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup31e","visible","on");
expr3e=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[435,120,50,30],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","texpr3e","visible","on");
else
uicontrol("parent",demo_lhy, "style","image","string","dxdydz.png", "position",[240,50,500,160],"horizontalalignment","left", "fontsize",14,"background",[1 1 1],"visible","on");  
liminf33f=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[425,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf33f","visible","on"); 
limsup33f=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[445,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup33f","visible","on");
liminf32f=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[345,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf32f","visible","on"); 
limsup32f=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[360,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup32f","visible","on");
liminf31f=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[260,90,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tliminf31f","visible","on"); 
limsup31f=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[280,155,50,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tlimsup31f","visible","on");
expr3f=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[435,120,50,30],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","texpr3f","visible","on");
end

botao=uicontrol("parent",demo_lhy, "style","pushbutton","string","Calcule!", "position",[300,20,80,20],"horizontalalignment","left", "fontsize",14,"background",[.6 .6 .6], "tag","tbotao","Callback","calculos");

uicontrol("parent",demo_lhy, "style","text","string","Resposta:", "position",[430,20,70,20],"horizontalalignment","left", "fontsize",14,"background",[1 1 1]); 
resp=uicontrol("parent",demo_lhy, "style","edit","string",string(0.0), "position",[500,20,100,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","tresp");


    
endfunction


function calculos
    
aux=control1.value;
if (aux==1) then
lm1=findobj("tag", "tliminf11"); xii =lm1.string;
ls1=findobj("tag", "tlimsup11"); xff =ls1.string;
ex1=findobj("tag", "texpr1"); f =ex1.string;
xi=evstr(xii);//Trasnformando as variáveis x em números
xf=evstr(xff);
     
deff('w=fb(x)', 'w=('+f+')');
elseif (aux==2) then
lm21a=findobj("tag", "tliminf21a"); xii =lm21a.string;
ls21a=findobj("tag", "tlimsup21a"); xff =ls21a.string;
lm22a=findobj("tag", "tliminf22a"); yii =lm22a.string;
ls22a=findobj("tag", "tlimsup22a"); yff =ls22a.string;
ex2a=findobj("tag", "texpr2a"); f =ex2a.string;


xi=evstr(xii); //Trasnformando as variáveis x em números
xf=evstr(xff);
zii="0";
zff="1";

deff('w=fb(v,numfun)', 'x=v(1); s=v(2); t=v(3); y=(1-s)*('+yii+')+s*('+yff+'); z=(1-t)*('+zii+')+t*('+zff+'); w=('+f+')*abs('+zff+'-('+zii+'))*abs('+yff+'-('+yii+'));');

yi=0;
yf=1;
zi=0;
zf=1;
        
M = [xi, yi, zi; xi, yf, zi; xf, yf, zi; xf, yi, zi; xi, yi, zf; xi, yf, zf; xf, yf, zf; xf, yi, zf];

elseif (aux==3) then
lm21b=findobj("tag", "tliminf21b"); yii =lm21b.string;
ls21b=findobj("tag", "tlimsup21b"); yff =ls21b.string;
lm22b=findobj("tag", "tliminf22b"); xii =lm22b.string;
ls22b=findobj("tag", "tlimsup22b"); xff =ls22b.string;
ex2b=findobj("tag", "texpr2b"); f =ex2b.string;

yi=evstr(yii);
yf=evstr(yff);
zii="0";
zff="1";

deff('w=fb(v,numfun)', 'y=v(1); s=v(2); t=v(3); x=(1-s)*('+xii+')+s*('+xff+'); z=(1-t)*('+zii+')+t*('+zff+'); w=('+f+')*abs('+zff+'-('+zii+'))*abs('+xff+'-('+xii+'));');
xi=0;
xf=1;
zi=0;
zf=1;
M = [yi, xi, zi; yi, xf, zi; yf, xf, zi; yf, xi, zi; yi, xi, zf; yi, xf, zf; yf, xf, zf; yf, xi, zf];
elseif (aux==4) then
lm31a=findobj("tag", "tliminf31a"); xii =lm31a.string;
ls31a=findobj("tag", "tlimsup31a"); xff =ls31a.string;
lm32a=findobj("tag", "tliminf32a"); yii =lm32a.string;
ls32a=findobj("tag", "tlimsup32a"); yff =ls32a.string;
lm33a=findobj("tag", "tliminf33a"); zii =lm33a.string;
ls33a=findobj("tag", "tlimsup33a"); zff =ls33a.string;
ex3a=findobj("tag", "texpr3"); f =ex3a.string;

xi=evstr(xii); //Trasnformando as variáveis x em números
xf=evstr(xff);

deff('w=fb(v,numfun)', 'x=v(1); s=v(2); t=v(3); y=(1-s)*('+yii+')+s*('+yff+'); z=(1-t)*('+zii+')+t*('+zff+'); w=('+f+')*abs('+zff+'-('+zii+'))*abs('+yff+'-('+yii+'));');

yi=0;
yf=1;
zi=0;
zf=1;
        
M = [xi, yi, zi; xi, yf, zi; xf, yf, zi; xf, yi, zi; xi, yi, zf; xi, yf, zf; xf, yf, zf; xf, yi, zf];
    

elseif (aux==5) then
lm31b=findobj("tag", "tliminf31b"); yii =lm31b.string;
ls31b=findobj("tag", "tlimsup31b"); yff =ls31b.string;
lm32b=findobj("tag", "tliminf32b"); xii =lm32b.string;
ls32b=findobj("tag", "tlimsup32b"); xff =ls32b.string;
lm33b=findobj("tag", "tliminf33b"); zii =lm33b.string;
ls33b=findobj("tag", "tlimsup33b"); zff =ls33b.string;
ex3b=findobj("tag", "texpr3b"); f =ex3b.string;

yi=evstr(yii);
yf=evstr(yff);

deff('w=fb(v,numfun)', 'y=v(1); s=v(2); t=v(3); x=(1-s)*('+xii+')+s*('+xff+'); z=(1-t)*('+zii+')+t*('+zff+'); w=('+f+')*abs('+zff+'-('+zii+'))*abs('+xff+'-('+xii+'));');
xi=0;
xf=1;
zi=0;
zf=1;
M = [yi, xi, zi; yi, xf, zi; yf, xf, zi; yf, xi, zi; yi, xi, zf; yi, xf, zf; yf, xf, zf; yf, xi, zf];
elseif (aux==6) then
lm31c=findobj("tag", "tliminf31c"); xii =lm31c.string;
ls31c=findobj("tag", "tlimsup31c"); xff =ls31c.string;
lm32c=findobj("tag", "tliminf32c"); zii =lm32c.string;
ls32c=findobj("tag", "tlimsup32c"); zff =ls32c.string;
lm33c=findobj("tag", "tliminf33c"); yii =lm33c.string;
ls33c=findobj("tag", "tlimsup33c"); yff =ls33c.string;
ex3c=findobj("tag", "texpr3c"); f =ex3c.string;

xi=evstr(xii);
xf=evstr(xff);

deff('w=fb(v,numfun)', 'x=v(1); s=v(2); t=v(3); z=(1-s)*('+zii+')+s*('+zff+'); y=(1-t)*('+yii+')+t*('+yff+'); w=('+f+')*abs('+yff+'-('+yii+'))*abs('+zff+'-('+zii+'));');

zi=0;
zf=1;
yi=0;
yf=1;        
M = [xi, zi, yi; xi, zf, yi; xf, zf, yi; xf, zi, yi; xi, zi, yf; xi, zf, yf; xf, zf, yf; xf, zi, yf];
elseif (aux==7) then
lm31d=findobj("tag", "tliminf31d"); zii =lm31d.string;
ls31d=findobj("tag", "tlimsup31d"); zff =ls31d.string;
lm32d=findobj("tag", "tliminf32d"); xii =lm32d.string;
ls32d=findobj("tag", "tlimsup32d"); xff =ls32d.string;
lm33d=findobj("tag", "tliminf33d"); yii =lm33d.string;
ls33d=findobj("tag", "tlimsup33d"); yff =ls33d.string;
ex3d=findobj("tag", "texpr3d"); f =ex3d.string;

zi=evstr(zii);
zf=evstr(zff);

deff('w=fb(v,numfun)', 'z=v(1); s=v(2); t=v(3); x=(1-s)*('+xii+')+s*('+xff+'); y=(1-t)*('+yii+')+t*('+yff+'); w=('+f+')*abs('+yff+'-('+yii+'))*abs('+xff+'-('+xii+'));');
xi=0;
xf=1;
yi=0;
yf=1;
M = [zi, xi, yi; zi, xf, yi; zf, xf, yi; zf, xi, yi; zi, xi, yf; zi, xf, yf; zf, xf, yf; zf, xi, yf];
elseif (aux==8) then
lm31e=findobj("tag", "tliminf31e"); yii =lm31e.string;
ls31e=findobj("tag", "tlimsup31e"); yff =ls31e.string;
lm32e=findobj("tag", "tliminf32e"); zii =lm32e.string;
ls32e=findobj("tag", "tlimsup32e"); zff =ls32e.string;
lm33e=findobj("tag", "tliminf33e"); xii =lm33e.string;
ls33e=findobj("tag", "tlimsup33e"); xff =ls33e.string;
ex3e=findobj("tag", "texpr3e"); f =ex3e.string;
yi=evstr(yii);
yf=evstr(yff);

deff('w=fb(v,numfun)', 'y=v(1); s=v(2); t=v(3); z=(1-s)*('+zii+')+s*('+zff+'); x=(1-t)*('+xii+')+t*('+xff+'); w=('+f+')*abs('+xff+'-('+xii+'))*abs('+zff+'-('+zii+'));');
zi=0;
zf=1;
xi=0;
xf=1;
M = [yi, zi, xi; yi, zf, xi; yf, zf, xi; yf, zi, xi; yi, zi, xf; yi, zf, xf; yf, zf, xf; yf, zi, xf];
else
lm31f=findobj("tag", "tliminf31f"); zii =lm31f.string;
ls31f=findobj("tag", "tlimsup31f"); zff =ls31f.string;
lm32f=findobj("tag", "tliminf32f"); yii =lm32f.string;
ls32f=findobj("tag", "tlimsup32f"); yff =ls32f.string;
lm33f=findobj("tag", "tliminf33f"); xii =lm33f.string;
ls33f=findobj("tag", "tlimsup33f"); xff =ls33f.string;
ex3f=findobj("tag", "texpr3f"); f =ex3f.string;
zi=evstr(zii);
zf=evstr(zff);

deff('w=fb(v,numfun)', 'z=v(1); s=v(2); t=v(3); y=(1-s)*('+yii+')+s*('+yff+'); x=(1-t)*('+xii+')+t*('+xff+'); w=('+f+')*abs('+xff+'-('+xii+'))*abs('+yff+'-('+yii+'));');
yi=0;
yf=1;
xi=0;
xf=1;
M = [zi, yi, xi; zi, yf, xi; zf, yf, xi; zf, yi, xi; zi, yi, xf; zi, yf, xf; zf, yf, xf; zf, yi, xf];
end



if (aux==1) then
[y,err]=intg(xi, xf, fb,1.d-13,1.d-8);
r=findobj("tag", "tresp");
r.string=string(y);
end


if (aux>1) then

X=[M(1,1),M(1,1),M(3,1),M(1,1),M(1,1);M(5,1),M(3,1),M(6,1),M(2,1),M(3,1);M(6,1),M(4,1),M(7,1),M(3,1),M(6,1);M(8,1),M(8,1),M(8,1),M(6,1),M(8,1)];
Y=[M(1,2),M(1,2),M(3,2),M(1,2),M(1,2);M(5,2),M(3,2),M(6,2),M(2,2),M(3,2);M(6,2),M(4,2),M(7,2),M(3,2),M(6,2);M(8,2),M(8,2),M(8,2),M(6,2),M(8,2)];
Z=[M(1,3),M(1,3),M(3,3),M(1,3),M(1,3);M(5,3),M(3,3),M(6,3),M(2,3),M(3,3);M(6,3),M(4,3),M(7,3),M(3,3),M(6,3);M(8,3),M(8,3),M(8,3),M(6,3),M(8,3)];
[y,erro] = int3d(X, Y, Z,fb,1, [0, 100000, 0.0, 1.d-2]);
r=findobj("tag", "tresp");
r.string=string(y);
end
    

endfunction


//uicontrol("parent",demo_lhy, "style","text","string","Expressao", "position",[1,500,80,20],"horizontalalignment","left", "fontsize",14,"background",[1 1 1]);

//saida2 = uicontrol("parent",demo_lhy, "style","edit","string",string(37.2), "position",[90,500,100,20],"horizontalalignment","left", "fontsize",14,"background",[.9 .9 .9], "tag","Expressao");
