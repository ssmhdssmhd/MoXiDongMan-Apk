.class public Lorg/bouncycastle/asn1/gm/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static do:Landroid/support/v4/uh2;

.field public static final for:Ljava/util/Hashtable;

.field public static if:Landroid/support/v4/uh2;

.field public static final new:Ljava/util/Hashtable;

.field public static final try:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/gm/do$do;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/gm/do$do;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/gm/do;->do:Landroid/support/v4/uh2;

    new-instance v0, Lorg/bouncycastle/asn1/gm/do$if;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/gm/do$if;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/gm/do;->if:Landroid/support/v4/uh2;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/gm/do;->for:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/gm/do;->new:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/gm/do;->try:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->wapip192v1:Lorg/bouncycastle/asn1/catch;

    sget-object v1, Lorg/bouncycastle/asn1/gm/do;->if:Landroid/support/v4/uh2;

    const-string v2, "wapip192v1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/gm/do;->new(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;Landroid/support/v4/uh2;)V

    sget-object v0, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2p256v1:Lorg/bouncycastle/asn1/catch;

    sget-object v1, Lorg/bouncycastle/asn1/gm/do;->do:Landroid/support/v4/uh2;

    const-string v2, "sm2p256v1"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/asn1/gm/do;->new(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;Landroid/support/v4/uh2;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/gm/do;->for:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/for;->break(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/catch;

    return-object p0
.end method

.method public static case(Ljava/lang/String;)Landroid/support/v4/th2;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/gm/do;->break(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/gm/do;->else(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic do(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/gm/do;->try(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/gm/do;->new:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/uh2;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/uh2;->if()Landroid/support/v4/th2;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static for(Lorg/bouncycastle/math/ec/if;)Lorg/bouncycastle/math/ec/if;
    .locals 0

    return-object p0
.end method

.method public static goto(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/gm/do;->try:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic if(Lorg/bouncycastle/math/ec/if;)Lorg/bouncycastle/math/ec/if;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/gm/do;->for(Lorg/bouncycastle/math/ec/if;)Lorg/bouncycastle/math/ec/if;

    move-result-object p0

    return-object p0
.end method

.method public static new(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;Landroid/support/v4/uh2;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/gm/do;->for:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/for;->break(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/gm/do;->try:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lorg/bouncycastle/asn1/gm/do;->new:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static this()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/gm/do;->try:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private static try(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method
