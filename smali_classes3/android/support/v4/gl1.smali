.class public Landroid/support/v4/gl1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/support/v4/gl1;->do:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x20

    const/16 v1, 0x7f

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2, v2}, Landroid/support/v4/gl1;->if(IIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static case(IZZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, p1, p2}, Landroid/support/v4/gl1;->if(IIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static catch(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Landroid/support/v4/gl1;->case(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static do(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Landroid/support/v4/gl1;->case(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs else(I[C)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    sget-object v6, Landroid/support/v4/gl1;->do:Ljava/util/Random;

    move v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/gl1;->new(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 2
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v6, Landroid/support/v4/gl1;->do:Ljava/util/Random;

    move v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/support/v4/gl1;->new(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs for(IIIZZ[C)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v6, Landroid/support/v4/gl1;->do:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Landroid/support/v4/gl1;->new(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static goto(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/support/v4/gl1;->case(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if(IIIZZ)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v6, Landroid/support/v4/gl1;->do:Ljava/util/Random;

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/support/v4/gl1;->new(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static new(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-ltz p0, :cond_12

    if-eqz p5, :cond_2

    .line 1
    array-length v0, p5

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The chars array must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    if-eqz p5, :cond_3

    .line 3
    array-length p2, p5

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    if-nez p4, :cond_4

    const p2, 0x7fffffff

    goto :goto_1

    :cond_4
    const/16 p2, 0x7b

    const/16 p1, 0x20

    goto :goto_1

    :cond_5
    if-le p2, p1, :cond_11

    .line 4
    :goto_1
    new-array v0, p0, [C

    sub-int/2addr p2, p1

    :goto_2
    add-int/lit8 v1, p0, -0x1

    if-eqz p0, :cond_10

    if-nez p5, :cond_6

    .line 5
    invoke-virtual {p6, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    int-to-char p0, p0

    goto :goto_3

    .line 6
    :cond_6
    invoke-virtual {p6, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    aget-char p0, p5, p0

    :goto_3
    if-eqz p3, :cond_7

    .line 7
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    if-eqz p4, :cond_8

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    if-nez p3, :cond_f

    if-nez p4, :cond_f

    :cond_9
    const/16 v2, 0x80

    const v3, 0xd800

    const v4, 0xdc00

    if-lt p0, v4, :cond_b

    const v5, 0xdfff

    if-gt p0, v5, :cond_b

    if-nez v1, :cond_a

    goto :goto_4

    .line 8
    :cond_a
    aput-char p0, v0, v1

    add-int/lit8 v1, v1, -0x1

    .line 9
    invoke-virtual {p6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, v3

    int-to-char p0, p0

    aput-char p0, v0, v1

    goto :goto_5

    :cond_b
    if-lt p0, v3, :cond_d

    const v3, 0xdb7f

    if-gt p0, v3, :cond_d

    if-nez v1, :cond_c

    goto :goto_4

    .line 10
    :cond_c
    invoke-virtual {p6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    .line 11
    aput-char p0, v0, v1

    goto :goto_5

    :cond_d
    const v2, 0xdb80

    if-lt p0, v2, :cond_e

    const v2, 0xdbff

    if-gt p0, v2, :cond_e

    goto :goto_4

    .line 12
    :cond_e
    aput-char p0, v0, v1

    goto :goto_5

    :cond_f
    :goto_4
    add-int/lit8 v1, v1, 0x1

    :goto_5
    move p0, v1

    goto :goto_2

    .line 13
    :cond_10
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 14
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Parameter end ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be greater than start ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested random string length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is less than 0."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public static this(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Landroid/support/v4/gl1;->case(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static try(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    sget-object v6, Landroid/support/v4/gl1;->do:Ljava/util/Random;

    move v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/gl1;->new(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/gl1;->else(I[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
