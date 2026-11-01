.class public Landroid/support/v4/af;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final break:I = 0x9

.field public static final case:I = 0x4

.field public static final catch:I = 0xa

.field public static final class:I = 0x0

.field public static final const:I = 0x1

.field public static final else:I = 0x5

.field public static final final:I = 0x2

.field public static final for:I = 0x1

.field public static final goto:I = 0x6

.field public static final if:I = 0x0

.field public static final import:I = 0x6

.field public static final native:I = 0x8

.field public static final new:I = 0x2

.field public static final public:I = 0x9

.field public static final return:I = 0xa

.field private static final static:[Ljava/lang/String;

.field public static final super:I = 0x3

.field private static final switch:Ljava/util/Hashtable;

.field public static final this:I = 0x8

.field public static final throw:I = 0x4

.field public static final try:I = 0x3

.field public static final while:I = 0x5


# instance fields
.field private do:Lorg/bouncycastle/asn1/new;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "unspecified"

    const-string v1, "keyCompromise"

    const-string v2, "cACompromise"

    const-string v3, "affiliationChanged"

    const-string v4, "superseded"

    const-string v5, "cessationOfOperation"

    const-string v6, "certificateHold"

    const-string v7, "unknown"

    const-string v8, "removeFromCRL"

    const-string v9, "privilegeWithdrawn"

    const-string v10, "aACompromise"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/af;->static:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/support/v4/af;->switch:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/new;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/new;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/af;->do:Lorg/bouncycastle/asn1/new;

    return-void
.end method

.method public static case(I)Landroid/support/v4/af;
    .locals 3

    invoke-static {p0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroid/support/v4/af;->switch:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/support/v4/af;

    invoke-direct {v2, p0}, Landroid/support/v4/af;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/af;

    return-object p0
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/af;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/af;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/af;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/asn1/new;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/new;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/new;->final()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/support/v4/af;->case(I)Landroid/support/v4/af;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/af;->do:Lorg/bouncycastle/asn1/new;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/af;->try()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/support/v4/af;->static:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "invalid"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRLReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/af;->do:Lorg/bouncycastle/asn1/new;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/new;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
