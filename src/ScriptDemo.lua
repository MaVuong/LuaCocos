function AnimationParse(strinfo)
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
