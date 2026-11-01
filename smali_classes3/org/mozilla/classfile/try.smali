.class final Lorg/mozilla/classfile/try;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final const:I = 0x100

.field public static final default:B = 0x10t

.field public static final extends:B = 0xft

.field public static final final:B = 0x7t

.field public static final finally:B = 0x12t

.field public static final import:B = 0x8t

.field public static final native:B = 0x3t

.field private static final package:I = 0xffff

.field public static final public:B = 0x4t

.field public static final return:B = 0x5t

.field public static final static:B = 0x6t

.field public static final super:B = 0x9t

.field public static final switch:B = 0xct

.field public static final throw:B = 0xat

.field public static final throws:B = 0x1t

.field public static final while:B = 0xbt


# instance fields
.field private break:Lorg/mozilla/javascript/UintMap;

.field private case:Lorg/mozilla/javascript/ObjToIntMap;

.field private catch:Lorg/mozilla/javascript/UintMap;

.field private class:[B

.field private do:Lorg/mozilla/classfile/for;

.field private else:Lorg/mozilla/javascript/ObjToIntMap;

.field private for:Lorg/mozilla/javascript/ObjToIntMap;

.field private goto:I

.field private if:Lorg/mozilla/javascript/UintMap;

.field private new:Lorg/mozilla/javascript/ObjToIntMap;

.field private this:I

.field private try:Lorg/mozilla/javascript/ObjToIntMap;


# direct methods
.method public constructor <init>(Lorg/mozilla/classfile/for;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/try;->if:Lorg/mozilla/javascript/UintMap;

    .line 3
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/try;->for:Lorg/mozilla/javascript/ObjToIntMap;

    .line 4
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/try;->new:Lorg/mozilla/javascript/ObjToIntMap;

    .line 5
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/try;->try:Lorg/mozilla/javascript/ObjToIntMap;

    .line 6
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/try;->case:Lorg/mozilla/javascript/ObjToIntMap;

    .line 7
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/try;->else:Lorg/mozilla/javascript/ObjToIntMap;

    .line 8
    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/try;->break:Lorg/mozilla/javascript/UintMap;

    .line 9
    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    .line 10
    iput-object p1, p0, Lorg/mozilla/classfile/try;->do:Lorg/mozilla/classfile/for;

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lorg/mozilla/classfile/try;->this:I

    const/16 p1, 0x100

    new-array p1, p1, [B

    .line 12
    iput-object p1, p0, Lorg/mozilla/classfile/try;->class:[B

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    return-void
.end method

.method private const(Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p2

    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/try;->super(I)V

    .line 4
    iget-object v0, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/try;->goto:I

    const/16 v3, 0xc

    aput-byte v3, v0, v1

    .line 5
    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 6
    iget-object v0, p0, Lorg/mozilla/classfile/try;->class:[B

    invoke-static {p2, v0, p1}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 7
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    iget p2, p0, Lorg/mozilla/classfile/try;->this:I

    invoke-virtual {p1, p2, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 8
    iget p1, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/mozilla/classfile/try;->this:I

    int-to-short p1, p1

    return p1
.end method

.method private super(I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int v1, v0, p1

    iget-object v2, p0, Lorg/mozilla/classfile/try;->class:[B

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 2
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int v3, v0, p1

    if-le v3, v1, :cond_0

    add-int v1, v0, p1

    .line 3
    :cond_0
    new-array p1, v1, [B

    const/4 v1, 0x0

    .line 4
    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object p1, p0, Lorg/mozilla/classfile/try;->class:[B

    :cond_1
    return-void
.end method


# virtual methods
.method public break(Ljava/lang/String;Ljava/lang/String;I)S
    .locals 5

    .line 1
    new-instance v0, Lorg/mozilla/classfile/new;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p3, p1, p2}, Lorg/mozilla/classfile/new;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lorg/mozilla/classfile/try;->else:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/mozilla/classfile/try;->const(Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    const/4 v2, 0x5

    .line 4
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/try;->super(I)V

    .line 5
    iget-object v2, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v3, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/try;->goto:I

    aput-byte v1, v2, v3

    .line 6
    invoke-static {p3, v2, v4}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p3

    iput p3, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 7
    iget-object v2, p0, Lorg/mozilla/classfile/try;->class:[B

    invoke-static {p1, v2, p3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 8
    iget v2, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/mozilla/classfile/try;->this:I

    .line 9
    iget-object p1, p0, Lorg/mozilla/classfile/try;->else:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 10
    invoke-virtual {p0, v2, p2}, Lorg/mozilla/classfile/try;->return(ILjava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v2, v1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    :cond_0
    int-to-short p1, v2

    return p1
.end method

.method public case(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->new(I)I

    move-result p1

    return p1

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->new(I)I

    move-result p1

    return p1

    .line 6
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 7
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->for(F)I

    move-result p1

    return p1

    .line 8
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 9
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/try;->try(J)I

    move-result p1

    return p1

    .line 10
    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/try;->if(D)I

    move-result p1

    return p1

    .line 12
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->else(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 14
    :cond_6
    instance-of v0, p1, Lorg/mozilla/classfile/for$for;

    if-eqz v0, :cond_7

    .line 15
    check-cast p1, Lorg/mozilla/classfile/for$for;

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->catch(Lorg/mozilla/classfile/for$for;)S

    move-result p1

    return p1

    .line 16
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_8
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->new(I)I

    move-result p1

    return p1
.end method

.method public catch(Lorg/mozilla/classfile/for$for;)S
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/try;->else:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2
    iget-byte v0, p1, Lorg/mozilla/classfile/for$for;->do:B

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p1, Lorg/mozilla/classfile/for$for;->if:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/for$for;->for:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/for$for;->new:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lorg/mozilla/classfile/try;->goto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p1, Lorg/mozilla/classfile/for$for;->if:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/for$for;->for:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/for$for;->new:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lorg/mozilla/classfile/try;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p1, Lorg/mozilla/classfile/for$for;->if:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/for$for;->for:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/for$for;->new:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lorg/mozilla/classfile/try;->class(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    .line 6
    :goto_0
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/try;->super(I)V

    .line 7
    iget-object v1, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v2, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/try;->goto:I

    const/16 v4, 0xf

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 8
    iput v2, p0, Lorg/mozilla/classfile/try;->goto:I

    iget-byte v5, p1, Lorg/mozilla/classfile/for$for;->do:B

    aput-byte v5, v1, v3

    .line 9
    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 10
    iget v0, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/try;->this:I

    .line 11
    iget-object v1, p0, Lorg/mozilla/classfile/try;->else:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 12
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v0, v4}, Lorg/mozilla/javascript/UintMap;->put(II)V

    :cond_2
    int-to-short p1, v0

    return p1
.end method

.method public class(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    .line 1
    new-instance v0, Lorg/mozilla/classfile/else;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/else;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lorg/mozilla/classfile/try;->try:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v2, :cond_0

    .line 3
    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/try;->const(Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    .line 4
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result p1

    const/4 p3, 0x5

    .line 5
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/try;->super(I)V

    .line 6
    iget-object p3, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/try;->goto:I

    aput-byte v3, p3, v1

    .line 7
    invoke-static {p1, p3, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 8
    iget-object p3, p0, Lorg/mozilla/classfile/try;->class:[B

    invoke-static {p2, p3, p1}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 9
    iget v1, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 p1, v1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/try;->this:I

    .line 10
    iget-object p1, p0, Lorg/mozilla/classfile/try;->try:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 11
    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/classfile/try;->return(ILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p1, v1

    return p1
.end method

.method public do(Ljava/lang/String;)S
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/try;->case:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v1, :cond_2

    const/16 v3, 0x2e

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 3
    invoke-static {p1}, Lorg/mozilla/classfile/for;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lorg/mozilla/classfile/try;->case:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 5
    iget-object v4, p0, Lorg/mozilla/classfile/try;->case:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4, p1, v3}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    move v6, v3

    move-object v3, v0

    move v0, v6

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result v0

    const/4 v1, 0x3

    .line 7
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/try;->super(I)V

    .line 8
    iget-object v1, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v4, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/classfile/try;->goto:I

    aput-byte v2, v1, v4

    .line 9
    invoke-static {v0, v1, v5}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 10
    iget v0, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/try;->this:I

    .line 11
    iget-object v1, p0, Lorg/mozilla/classfile/try;->case:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, v3, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lorg/mozilla/classfile/try;->case:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 14
    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/try;->return(ILjava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p1, v0

    return p1
.end method

.method public else(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/try;->if:Lorg/mozilla/javascript/UintMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/try;->this:I

    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/try;->super(I)V

    .line 5
    iget-object v1, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v3, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/try;->goto:I

    aput-byte v2, v1, v3

    .line 6
    invoke-static {p1, v1, v4}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 7
    iget-object v1, p0, Lorg/mozilla/classfile/try;->if:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    return v0
.end method

.method public final(Ljava/lang/String;)S
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/try;->for:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_6

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const v3, 0xffff

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    :goto_0
    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_0
    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x3

    .line 3
    invoke-direct {p0, v5}, Lorg/mozilla/classfile/try;->super(I)V

    .line 4
    iget v5, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 5
    iget-object v6, p0, Lorg/mozilla/classfile/try;->class:[B

    add-int/lit8 v7, v5, 0x1

    aput-byte v2, v6, v5

    add-int/lit8 v7, v7, 0x2

    .line 6
    iget-object v5, p0, Lorg/mozilla/classfile/try;->do:Lorg/mozilla/classfile/for;

    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/for;->F(I)[C

    move-result-object v5

    .line 7
    invoke-virtual {p1, v4, v1, v5, v4}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v6, 0x0

    :goto_1
    if-eq v6, v1, :cond_3

    .line 8
    aget-char v8, v5, v6

    if-eqz v8, :cond_1

    const/16 v9, 0x7f

    if-gt v8, v9, :cond_1

    .line 9
    iget-object v9, p0, Lorg/mozilla/classfile/try;->class:[B

    add-int/lit8 v10, v7, 0x1

    int-to-byte v8, v8

    aput-byte v8, v9, v7

    goto :goto_2

    :cond_1
    const/16 v9, 0x7ff

    if-le v8, v9, :cond_2

    .line 10
    iget-object v9, p0, Lorg/mozilla/classfile/try;->class:[B

    add-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v8, 0xc

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, v9, v7

    add-int/lit8 v7, v10, 0x1

    shr-int/lit8 v11, v8, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    .line 11
    aput-byte v11, v9, v10

    add-int/lit8 v10, v7, 0x1

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 12
    aput-byte v8, v9, v7

    :goto_2
    move v7, v10

    goto :goto_3

    .line 13
    :cond_2
    iget-object v9, p0, Lorg/mozilla/classfile/try;->class:[B

    add-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v8, 0x6

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v9, v7

    add-int/lit8 v7, v10, 0x1

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 14
    aput-byte v8, v9, v10

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 15
    :cond_3
    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, 0x2

    sub-int v5, v7, v5

    if-le v5, v3, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    iget-object v0, p0, Lorg/mozilla/classfile/try;->class:[B

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v6, v5, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v1, v1, 0x2

    int-to-byte v3, v5

    .line 17
    aput-byte v3, v0, v1

    .line 18
    iput v7, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 19
    iget v0, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/try;->this:I

    .line 20
    iget-object v1, p0, Lorg/mozilla/classfile/try;->for:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :goto_4
    if-nez v4, :cond_5

    goto :goto_5

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Too big string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    :goto_5
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/try;->return(ILjava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p1, v0

    return p1
.end method

.method public for(F)I
    .locals 3

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/try;->super(I)V

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/try;->goto:I

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 4
    iget-object v0, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    invoke-static {p1, v0, v1}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 5
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    iget v0, p0, Lorg/mozilla/classfile/try;->this:I

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 6
    iget p1, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/mozilla/classfile/try;->this:I

    return p1
.end method

.method public goto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    .line 1
    new-instance v0, Lorg/mozilla/classfile/else;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/else;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lorg/mozilla/classfile/try;->new:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v2, :cond_0

    .line 3
    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/try;->const(Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    .line 4
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result p1

    const/4 p3, 0x5

    .line 5
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/try;->super(I)V

    .line 6
    iget-object p3, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/try;->goto:I

    aput-byte v3, p3, v1

    .line 7
    invoke-static {p1, p3, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 8
    iget-object p3, p0, Lorg/mozilla/classfile/try;->class:[B

    invoke-static {p2, p3, p1}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 9
    iget v1, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 p1, v1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/try;->this:I

    .line 10
    iget-object p1, p0, Lorg/mozilla/classfile/try;->new:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 11
    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/classfile/try;->return(ILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p1, v1

    return p1
.end method

.method public if(D)I
    .locals 3

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/try;->super(I)V

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/try;->goto:I

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    invoke-static {p1, p2, v0, v1}, Lorg/mozilla/classfile/for;->X(J[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 5
    iget p1, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 p2, p1, 0x2

    .line 6
    iput p2, p0, Lorg/mozilla/classfile/try;->this:I

    .line 7
    iget-object p2, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p2, p1, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    return p1
.end method

.method public import(Ljava/lang/String;II)I
    .locals 3

    sub-int v0, p3, p2

    mul-int/lit8 v0, v0, 0x3

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    return p3

    :cond_0
    :goto_0
    if-eq p2, p3, :cond_4

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x7ff

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x3

    :goto_1
    if-gez v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return p3
.end method

.method public native()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public new(I)I
    .locals 4

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/try;->super(I)V

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/try;->goto:I

    const/4 v3, 0x3

    aput-byte v3, v0, v1

    .line 3
    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 4
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    iget v0, p0, Lorg/mozilla/classfile/try;->this:I

    invoke-virtual {p1, v0, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 5
    iget p1, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/mozilla/classfile/try;->this:I

    int-to-short p1, p1

    return p1
.end method

.method public public(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    const v3, 0xffff

    if-gt v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    if-le v0, v3, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/classfile/try;->import(Ljava/lang/String;II)I

    move-result p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public return(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/try;->break:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/UintMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static([BI)I
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/try;->this:I

    int-to-short v0, v0

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/2addr p2, p1

    return p2
.end method

.method public this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 6

    .line 1
    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/try;->const(Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result v1

    const/4 v2, 0x5

    .line 3
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/try;->super(I)V

    .line 4
    iget-object v2, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v3, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/try;->goto:I

    const/16 v5, 0xb

    aput-byte v5, v2, v3

    .line 5
    invoke-static {v1, v2, v4}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 6
    iget-object v2, p0, Lorg/mozilla/classfile/try;->class:[B

    invoke-static {v0, v2, v1}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 7
    new-instance v0, Lorg/mozilla/classfile/else;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/else;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget p1, p0, Lorg/mozilla/classfile/try;->this:I

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/try;->return(ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    iget p2, p0, Lorg/mozilla/classfile/try;->this:I

    invoke-virtual {p1, p2, v5}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 10
    iget p1, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/mozilla/classfile/try;->this:I

    int-to-short p1, p1

    return p1
.end method

.method public throw(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/try;->break:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/UintMap;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public try(J)I
    .locals 4

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/try;->super(I)V

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/try;->class:[B

    iget v1, p0, Lorg/mozilla/classfile/try;->goto:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/try;->goto:I

    const/4 v3, 0x5

    aput-byte v3, v0, v1

    .line 3
    invoke-static {p1, p2, v0, v2}, Lorg/mozilla/classfile/for;->X(J[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/try;->goto:I

    .line 4
    iget p1, p0, Lorg/mozilla/classfile/try;->this:I

    add-int/lit8 p2, p1, 0x2

    .line 5
    iput p2, p0, Lorg/mozilla/classfile/try;->this:I

    .line 6
    iget-object p2, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p2, p1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    return p1
.end method

.method public while(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/try;->catch:Lorg/mozilla/javascript/UintMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method
