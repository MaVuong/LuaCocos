function OnEnterFinish(strinfo)
  local tb={};
  
  
  
  
  return tb;
end

function simpleAnimationtap(strinfo)
   local tbdecode=decode(strinfo);
  
  local xpos=tbdecode["tx"]+0;
  local scrt={};
  
  if xpos>240 then
    scrt["cid"]="2";
    scrt["script"]='["ChangeColor(1||1||0||0)","ChangeColor(1||1||1||1)",]';
  else
    scrt["cid"]="1";
    scrt["script"]='["ChangeColor(1||1||0||0)","ChangeColor(1||1||1||1)",]';
  end
  
  return encode(scrt);
end



function simpleAnimationtapScale(strinfo)
   local tbdecode=decode(strinfo);
  
  local xpos=tbdecode["tx"]+0;
  local scrt={};
  
  if xpos>240 then
    scrt["cid"]="2";
    scrt["script"]='["ScaleTo(1||1.2)","ScaleTo(1||1)",]';
  else
    scrt["cid"]="1";
    scrt["script"]='["ScaleTo(1||1.2)","ScaleTo(1||1)",]';
  end
  
  return encode(scrt);
end



function AnimationParse(strinfo)
  local tbdecode=decode(strinfo);
  
  local xpos=tbdecode["tx"]+0;
  local scrt={};
  
  if xpos>240 then
    scrt["cid"]="3";
    scrt["script"]='["MoveTo(2||{400,320})","RotateBy(2||360)","MoveTo(1||{100,120})"]';
  else
    scrt["cid"]="2";
    scrt["script"]='["MoveTo(2||{400,320})","ChangeColor(2||1||0||0)","MoveTo(1||{200,120})"]';
  end
  
  
  
  return encode(scrt);
end

