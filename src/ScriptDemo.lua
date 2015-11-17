function AnimationParse(strinfo)
  local tbdecode=decode(strinfo);
  
  local xpos=tbdecode["tx"]+0;
  local scrt={};
  
  if xpos>240 then
    scrt["cid"]="2";
    scrt["script"]='["MoveTo(2||{400,320})","RotateBy(2||360)","MoveTo(1||{100,120})"]';
  else
    scrt["cid"]="1";
    scrt["script"]='["MoveTo(2||{400,320})","ChangeColor(2||1||0||0)","MoveTo(1||{200,120})"]';
  end
  
  
  
  return encode(scrt);
end
