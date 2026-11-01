.class public Landroid/support/v4/q11;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/q11$do;,
        Landroid/support/v4/q11$if;
    }
.end annotation


# instance fields
.field public final do:Lorg/bouncycastle/crypto/util/try$if;

.field public for:Z

.field public final if:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;[B[BLjava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/q11;->for:Z

    new-instance v0, Lorg/bouncycastle/crypto/util/try$if;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/util/try$if;-><init>(Landroid/support/v4/b1;[B[B)V

    iput-object v0, p0, Landroid/support/v4/q11;->do:Lorg/bouncycastle/crypto/util/try$if;

    iput-object p4, p0, Landroid/support/v4/q11;->if:Ljava/security/SecureRandom;

    return-void
.end method

.method public static synthetic do(Landroid/support/v4/s11;)[B
    .locals 0

    invoke-static {p0}, Landroid/support/v4/q11;->for(Landroid/support/v4/s11;)[B

    move-result-object p0

    return-object p0
.end method

.method private static for(Landroid/support/v4/s11;)[B
    .locals 2

    :try_start_0
    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {p0}, Landroid/support/v4/s11;->if()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic if([B)Landroid/support/v4/s11;
    .locals 0

    invoke-static {p0}, Landroid/support/v4/q11;->new([B)Landroid/support/v4/s11;

    move-result-object p0

    return-object p0
.end method

.method private static new([B)Landroid/support/v4/s11;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p0

    new-instance v0, Landroid/support/v4/s11;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/try;->this()Lorg/bouncycastle/asn1/instanceof;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/if;->super()[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/s11;-><init>([B)V

    return-object v0
.end method
