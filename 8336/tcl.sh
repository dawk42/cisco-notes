foreach address {
2001:DB8:ACAD:A::1
2001:DB8:ACAD:12::1
2001:DB8:ACAD:13::1
2001:DB8:ACAD:B::2
2001:DB8:ACAD:12::2
2001:DB8:ACAD:23::2
2001:DB8:ACAD:C::3
2001:DB8:ACAD:13::3
2001:DB8:ACAD:23::3
}
{ ping $address }

foreach address {
2001:DB8:ACAD:A::1
2001:DB8:ACAD:12::1
2001:DB8:ACAD:13::1
}
{ ping $address }

foreach address {
2001:DB8:ACAD:B::2
2001:DB8:ACAD:12::2
2001:DB8:ACAD:23::2
}
{ ping $address }

foreach address {
2001:DB8:ACAD:C::3
2001:DB8:ACAD:13::3
2001:DB8:ACAD:23::3
}
{ ping $address }