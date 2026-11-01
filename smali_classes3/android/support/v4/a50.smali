.class public Landroid/support/v4/a50;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case()Ljava/util/Enumeration;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lorg/bouncycastle/asn1/x9/do;->try()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a50;->do(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Lorg/bouncycastle/asn1/sec/do;->catch()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a50;->do(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Landroid/support/v4/t11;->try()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a50;->do(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Lorg/bouncycastle/asn1/teletrust/do;->else()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a50;->do(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Lorg/bouncycastle/asn1/anssi/do;->this()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a50;->do(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Landroid/support/v4/j40;->new()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a50;->do(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Lorg/bouncycastle/asn1/gm/do;->this()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a50;->do(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private static do(Ljava/util/Vector;Ljava/util/Enumeration;)V
    .locals 1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static else(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/do;->case(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/do;->class(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/t11;->case(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/teletrust/do;->goto(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/asn1/anssi/do;->break(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/j40;->try(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, Lorg/bouncycastle/asn1/gm/do;->break(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static for(Ljava/lang/String;)Landroid/support/v4/th2;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/do;->if(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/do;->goto(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/t11;->if(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/teletrust/do;->new(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/asn1/anssi/do;->case(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/j40;->do(Ljava/lang/String;)Landroid/support/v4/e40;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a50;->if(Landroid/support/v4/e40;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, Lorg/bouncycastle/asn1/gm/do;->case(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private static if(Landroid/support/v4/e40;)Landroid/support/v4/th2;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/support/v4/th2;

    invoke-virtual {p0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/e40;->case()[B

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object p0, v6

    :goto_0
    return-object p0
.end method

.method public static new(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/do;->for(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/do;->this(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/asn1/teletrust/do;->try(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/anssi/do;->else(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Landroid/support/v4/j40;->if(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/e40;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a50;->if(Landroid/support/v4/e40;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Lorg/bouncycastle/asn1/gm/do;->else(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static try(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/do;->new(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/sec/do;->break(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/t11;->new(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/teletrust/do;->case(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/asn1/anssi/do;->goto(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/j40;->for(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, Lorg/bouncycastle/asn1/gm/do;->goto(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    invoke-static {p0}, Lorg/bouncycastle/crypto/ec/do;->break(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method
