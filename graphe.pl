gr(a,b,2).
gr(a,g,6).
gr(b,e,2).
gr(b,c,7).
gr(g,e,1).
gr(g,h,4).
gr(e,f,2).
gr(f,c,3).
gr(f,h,2).
gr(c,d,3).
gr(h,d,2).
solution(A,B) :- gr(A,B,_)
    ; gr(A,Intermediaire,_)
        , gr(Intermediaire,B,_) 
    ; gr(A,Intermediaire1,_)
        , gr(Intermediaire1,Intermediaire2,_)
        , gr(Intermediaire2,B,_).
distance(A,B,Segment1,Segment2) :- gr(A,C,Segment1), gr(C,B,Segment2).
distance(A,B,Distance) :- distance(A,B,Segment1,Segment2), Distance is Segment1 + Segment2.