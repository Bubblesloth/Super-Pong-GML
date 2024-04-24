x = oBalle.x
y = oBalle.y

image_angle = oBalle.image_angle


if image_xscale >= 0.5 && image_xscale <=  1.5 && grewupx = false{
	image_xscale += frequency
}
if image_xscale >= 1.5 grewupx = true

if image_xscale <= 1.5 && image_xscale >=  0.5 && grewupx = true{
	image_xscale -= frequency
}
if image_xscale <= 0.5 grewupx = false


if image_yscale >= 0.5 && image_yscale <=  1.5 && grewupy = false{
	image_yscale += frequency
}
if image_yscale >= 1.5 grewupy = true

if image_yscale <= 1.5 && image_yscale >=  0.5 && grewupy = true{
	image_yscale -= frequency
}
if image_yscale <= 0.5 grewupy = false