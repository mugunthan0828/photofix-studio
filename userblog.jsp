<%@page import="java.security.MessageDigest"%>
<!DOCTYPE html>
<html>
<title>blog</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css" type="text/css">
<style>

.w3-content, .w3-auto {
    margin-left: auto;
    margin-right: auto;
    margin-top: 6%;
}
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif;
 background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    background-size: 400% 400%;
    animation: gradient 15s ease infinite;
    }

@keyframes gradient {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}
</style>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    
     
        <% String f = "blog quack";
           String f1="photographer and videographer booking";
           String f2= "98756575543 and 7988686568";
          String f3=" bngfh@gjh.com and ghhyj@gnhgf.com";
MessageDigest  crypt= MessageDigest.getInstance("MD5");
crypt.update(f.getBytes());
MessageDigest crypt2 = MessageDigest.getInstance("MD5");
crypt2.update(f1.getBytes());
MessageDigest crypt3 = MessageDigest.getInstance("MD5");
crypt3.update(f2.getBytes());
MessageDigest crypt4 = MessageDigest.getInstance("MD5");
crypt3.update(f3.getBytes());
byte[] c = crypt.digest();
byte[] c2 = crypt2.digest();
byte[] c3 = crypt3.digest();
byte[] c4 = crypt4.digest();

StringBuffer en = new StringBuffer();

for (int i = 0; i < c.length; i++) {
    f = Integer.toHexString(0xFF & c[i]);

    if (f.length() < 2) {
        f= "0" + f;
    }

    en.append(f);
}
String hs=en.toString();

StringBuffer en2 = new StringBuffer();

for (int i = 0; i < c2.length; i++) {
    f1 = Integer.toHexString(0xFF & c2[i]);

    if (f1.length() < 2) {
        f1= "0" + f1;
    }
;
    en2.append(f1);
}
String hs1=en2.toString();


StringBuffer en3 = new StringBuffer();

for (int i = 0; i < c3.length; i++) {
    f2 = Integer.toHexString(0xFF & c3[i]);

    if (f2.length() < 2) {
        f2= "0" + f2;
    }
;
    en3.append(f2);
}
String hs2=en3.toString();

StringBuffer en4 = new StringBuffer();

for (int i = 0; i < c4.length; i++) {
    f3 = Integer.toHexString(0xFF & c4[i]);

    if (f3.length() < 2) {
        f3= "0" + f3;
    }
;
    en4.append(f3);
}
String hs3=en4.toString();

            %>

        <div>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div id="toolbar" class="toolbar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="toolbar-container">
                            

                            <aside id="text-2" class="widget widget_text">
                                <div class="textwidget">
                                    <div class="thim-have-any-question">
                                        Got a question?
                                        <div class="mobile">
                                        </div>
                                        <div class="email"><i class="fa fa-envelope"></i><a href="mailto:info@photofix.org">info@photofix.org</a>
                                        </div>
                                    </div>
                                </div>
                            </aside>
                            <aside id="login-popup-7" class="widget widget_login-popup">
                                <div class="thim-widget-login-popup thim-widget-login-popup-base template-base">
                                    <div class="thim-link-login thim-login-popup">
                                        <a class="register" href="homepage.jsp">Logout</a>
                                        <a class="login" href="booking.jsp=<%=request.getParameter("email")%>&uname=<%=request.getParameter("uname")%>&ln=<%=request.getParameter("ln")%>&ph=<%=request.getParameter("ph")%>">Booking</a></div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
                <a class="navbar-brand"><img src="images/logopc.jpg"></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right" style="margin-top: 5%;">
                      <% 
String uname=request.getParameter("uname");
String em=request.getParameter("email");
String ln=request.getParameter("ln");
String ph=request.getParameter("ph");
session.setAttribute("uname",uname); 
session.setAttribute("email",em);
session.setAttribute("ln",ln);
session.setAttribute("ph",ph);
%> 

                    <li><a href="userhome.jsp?sadcs4564=user+home+vcsvcd@<%=hs%>&email=<%=em%>&dgxb46uhrt=<%=hs1%>+<%=hs2%>&uname=<%=uname%>&vsdvr67f=<%=hs%>+<%=hs3%>&ln=<%=ln%>&asvsxgbvdf=<%=hs1%>+sfsf+<%=hs%>&ph=<%=ph%>&<%=hs1%><%=hs2%><%=hs3%>">HOME</a></li>
                    <li><a href="userabout.jsp?dafgs456=user+about+sacfs@<%=hs1%>&email=<%=em%>&dbg5r7vtui=<%=hs%>+<%=hs2%>&uname=<%=uname%>&svdfs657uty=<%=hs1%>+<%=hs3%>&ln=<%=ln%>&sdcvxfgn=<%=hs2%>+sdfcs+<%=hs%>&ph=<%=ph%>&<%=hs2%><%=hs1%><%=hs3%>">ABOUT</a></li>
                    <li><a href="userservice.jsp?dfdss4465=user+service+svsvsd@<%=hs2%>&email=<%=em%>&dbsv78ty=<%=hs3%>+<%=hs2%>&uname=<%=uname%>&sdfcsfc77r5=<%=hs%>+<%=hs1%>&ln=<%=ln%>&vxvvmn=<%=hs3%>+scscz+<%=hs%>&ph=<%=ph%>&<%=hs3%><%=hs1%><%=hs2%>">SERVICES</a></li>
                    <li><a href="userteam.jsp?dafsgd46=user+team+sfsg@ssg<%=hs3%>&email=<%=em%>&sgvs56t7=<%=hs2%>+<%=hs2%>&uname=<%=uname%>&svxvf67=<%=hs%>+<%=hs3%>&ln=<%=ln%>&dfbsctrnm=<%=hs1%>+dsvx+<%=hs%>&ph=<%=ph%>&<%=hs2%>+<%=hs1%>+<%=hs3%>">TEAMS</a></li>
                    <li><a href="userblog.jsp?dafd3576=user+blog+sgs@sg<%=hs2%>sgs&email=<%=em%>&gsdv356t4re=<%=hs%>+<%=hs2%>&uname=<%=uname%>&vsv54f=<%=hs1%>+<%=hs3%>&ln=<%=ln%>&sbsbvxnvb=<%=hs2%>+vsvd+<%=hs%>&ph=<%=ph%>&<%=hs1%>&<%=hs2%>&<%=hs3%>">BLOG</a></li>
                    <li><a href="usercontact.jsp?afds376=user+contact+gss@<%=hs1%>&email=<%=em%>&gvsd457tyi=<%=hs1%>+<%=hs2%>&uname=<%=uname%>&svgsf56=<%=hs%>+<%=hs3%>&ln=<%=ln%>&svsvvcty=<%=hs1%>+svdxs+<%=hs%>&ph=<%=ph%>&<%=hs3%><%=hs2%><%=hs1%>">CONTACT</a></li>
                 </ul>
            </div>
        </div>
       </nav>
        </div>
      <hr style="marin-bottom:20%">


<div class="w3-content" style="max-width:1400px">


<header class="w3-container w3-center w3-padding-32"> 
  <h1><b>MY BLOG</b></h1>
  <p>Welcome to the blog of <span class="w3-tag">Ashyy</span></p>
</header>

<div class="w3-row">


<div class="w3-col l8 s12">
  
  <div class="w3-card-4 w3-margin w3-white">
    <img src="images/AdobeStock_274966107_Nature_based_Solutions.jpeg" alt="Nature" style="width:100%">
    <div class="w3-container">
      <h3><b>Nature</b></h3>
      <h5> Into the wild, <span class="w3-opacity">April 7, 2014</span></h5>
    </div>

    <div class="w3-container">
      <p>Come, walk with me into the forest's blessed abode,
To see the wondrous beauty the Earth has bestowed;
We'll bask in the surreal splendor that surrounds us,
And listen to nature composing the forest's grand opus,
As sounds of whispering trees and burbling streams,
Send our minds wandering into a poet's lovely dreams.
      We'll walk where sunlight sets the forest's leaves aglow,
Weaving open paths to dapple golden light on all below;
Where trees shade us from summer heat and harsh rays,
Freeing our minds so we can see Mother Nature's ways,
Of creating nurturing sanctuaries for life dwelling there,
To shield its tender wards from storms too hard to bear.

Come sit beneath the glowing embers of an autumn tree,
Whose rich hues are a natural wonder many come to see,
While colorful leaves glide down in a whirling course,
Like embers breaking loose from their flaming source.
Glowing for a moment as if falling to their ending fate,
Instead, nourishing Earth for rebirth into a new state.

The wintering forest seems to be a still, desolate place.
Yet, under the snow and autumn leaves of a tree's base,
Beats the promising pulse of new life that patiently waits
For spring's warmth and rain to open wide nature's gates;
Roam with me under the trees standing strong over it all,
To watch them quietly sleep until nature's beckoning call.

Let us stroll in spring's forest where we will reap
The joy of Earth awakening its children from sleep,
And hear life's chorus and watch its offspring grow,
As waking trees renew their canopy over all below;
Come share with me the forest's spirit at rebirth,
So we too are reborn within this temple of Earth.

Every now and then let us answer the forest's call,
To come see life's beauty and the miracle of it all;
If we listen with our hearts as we walk among trees,
We may understand the message carried on a breeze,
For us to blend with the forest's spirit so it will beguile
Us into walking under its lovely trees for just a while.

</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
          
        </div>
        <div class="w3-col m4 w3-hide-small">
        
        </div>
      </div>
    </div>
  </div>
  <hr>

  <!-- Blog entry -->
  <div class="w3-card-4 w3-margin w3-white">
  <img src="images/venue.jpg" alt="weddings" style="width:100%">
    <div class="w3-container">
      <h3><b>Weddings</b></h3>
      <h5>Always and Forever, <span class="w3-opacity">April 2, 2015</span></h5>
    </div>

    <div class="w3-container">
      <p>The time has come to stand side by side
The Groom in his glory, his beautiful Bride.
They've waited so long for this moment in time
To take their vows and say, "Will you be mine?"

Marriage is precious and to be treasured.
The love that you have can never be measured.
It joins you as one, not just with a ring,
But a future together and what it will bring.

Keep the love alive and make it last.
Remember the good times don't live in the past.
The bond that you have shows the world that you care,
Not just for yourselves, but for the family you share.

Who knows what the future may hold?
Stay strong together until you grow old.
Be there for each other, keep good memories alive.
With love and respect you will always survive.

Today is your day to cherish forever,
Never forget what brought you together.
This special time is just for you,
A time to remember when you've said "I do."
</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
          
        </div>
        <div class="w3-col m4 w3-hide-small">
          </p>
        </div>
          
      </div>

    </div>
  </div>
   <div class="w3-card-4 w3-margin w3-white">
    <img src="images/photo-1533271802434-53997a5f9e6c.jpg" alt="poetry" style="width:100%">
    <div class="w3-container">
      <h3><b>Poetry and Photography</b></h3>
      <h5>The best of both worlds, <span class="w3-opacity">April 17, 2016</span></h5>
    </div>

    <div class="w3-container">
      <p>Spilled ink.
Old film.
Crumpled paper.
The click of a shutter.
Pens dying.
Wiping lenses.
Flashlights under the covers.
Struggling with a tripod.
Daydreaming.
The Rule of Thirds.
Tattered pages.
Beautiful sunsets.
Coffee shops.
Skittish animals.
3 am.
Cropping.
Always thinking.
The horizon line.
The frantic search for pen and paper.
Frustrated with trying to capture the beauty of the world In a small package.</p>
      <div class="w3-row">
        
       
      </div>
    </div>
  </div>
  <hr>
    <div class="w3-card-4 w3-margin w3-white">
    <img src="images/christmas-tree-1149619_1280.jpg" alt="Tradition" style="width:100%">
    <div class="w3-container">
      <h3><b>Traditions</b></h3>
      <h5> Best of worlds, <span class="w3-opacity">April 7, 2020</span></h5>
    </div>

    <div class="w3-container">
      <p> Traditional wedding photography allows the photographer to take a picture while everyone knows that they are being clicked. In traditional photography, people can dress up and give a pose as they wish.
Living with out traditions
Rituals and festivals lost
In memory of distant past
We become nonexistent
What is present but
Built upon yesterday's foundation
Brick by brick
Thought by thought
Ideals by ideals
Yet all is transitory
Struggle to keep past alive
Becomes a fight to keep
Present alive
Life changing so fast
Driving around I feel
I am the walking past
Of this new landscape
In present we host
Numerous ghost of past
Becoming ourselves a ghost identity
In desperation looking back
At traditions and rituals
To rescue an image
Disappearing fast
Like notebooks and cursive writing.
</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
          
        </div>
        <div class="w3-col m4 w3-hide-small">
        
        </div>
      </div>
    </div>
  </div>
  <hr>
    <div class="w3-card-4 w3-margin w3-white">
    <img src="images/adult-1867071_1280.jpg" alt="Fashion" style="width:100%">
    <div class="w3-container">
      <h3><b>Fashion</b></h3>
      <h5> Making a statement, <span class="w3-opacity">April 7, 2019</span></h5>
    </div>

    <div class="w3-container">
      <p>Fashion is not something that exists in dresses only. Fashion is in the sky, in the street, fashion has to do with ideas, the way we live, 
          what is happening.The definition of Fashion does not remain restricted to clothing choices only. A person?s Fashion is defined by how one 
          carries oneself ? this includes within its realm clothing sense, etiquette, and personality and how one conducts oneself.
          However, to narrow it down, the clothing inclination, in general, takes up a significant portion of what Fashion broadly is.
          Fashion depends on person to person. It differs based on the place, community, and, most importantly, time. 
          The concept of Fashion is always at flux. The trends and ideas keep changing from time to time. 
          Fashion is synonymous with glamour. It makes people, who practice it, confident and bold.
          It embraces the ability to express oneself openly and actively through clothing choices.

</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
          
        </div>
        <div class="w3-col m4 w3-hide-small">
        
        </div>
      </div>
    </div>
  </div>
  <hr>
    <div class="w3-card-4 w3-margin w3-white">
    <img src="images/lavender-3467202_1920.jpg" alt="Moments" style="width:100%">
    <div class="w3-container">
      <h3><b>Moments</b></h3>
      <h5> Making memories, <span class="w3-opacity">April 7, 2018</span></h5>
    </div>

    <div class="w3-container">
      <p>Memories, memories, memories some make you laugh, get angry, even cry but the one thing is for sure they all share a place deep in our hearts.
          Living on this Earth as long as you have, can you say that there have been memorable moments or people? 
          Did it change your life or perspective? If you hadn't met that person would your life be different? 
          The lovely part of life is that nobody has traveled the path in life that anyone has paved for themselves. 
          Therefore, nobody has seen what another has seen and even felt the same in those moments. 
          Like for example, one person could have witnessed child birth but the other person had a child.
          Same moment but different reactions and it could've been only memorable to one person.

</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
          
        </div>
        <div class="w3-col m4 w3-hide-small">
        
        </div>
      </div>
    </div>
  </div>
  <hr>
    
  <hr>

</div>


<div class="w3-col l4">

  <div class="w3-card w3-margin w3-margin-top">
  <img src="images/download.jpg" style="width:100%">
    <div class="w3-container w3-white">
      <h4><b>About Me</b></h4>
      <p>Just me, myself and I, exploring the universe of the unknown. I have a heart of love and a love towards photography. I want to share my world with you.</p>
    </div>
 
  </div>
  <div class="w3-card w3-margin w3-margin-top">
  
    <div class="w3-container w3-white">
      <h4><b>Follow me</b></h4>
      <p>Instagram: @cute_and_lethal_ashyy</p>
      <p>Faceook: Asmitha Ganesh</p>
      <p>Snapchat: asmitha_ganesh</p>
    </div>
    </div><hr>
 
 
  

</div>


</div><br>


</div>

      <hr>
        <div>          
            <footer class="footer text-left"> <p>Copyright &#169; 2020 Photofixstudio- All Rights Reserved.</p</footer>
       </div>


</body>
</html>
