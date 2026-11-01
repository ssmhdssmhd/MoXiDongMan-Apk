.class Lorg/bouncycastle/asn1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Lorg/bouncycastle/asn1/super;

.field public static final if:Lorg/bouncycastle/asn1/throw;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/n;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/b;->do:Lorg/bouncycastle/asn1/super;

    new-instance v0, Lorg/bouncycastle/asn1/q;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/q;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/b;->if:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/support/v4/import;)Lorg/bouncycastle/asn1/super;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/import;->new()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/b;->do:Lorg/bouncycastle/asn1/super;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/d0;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/d0;-><init>(Landroid/support/v4/import;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static if(Landroid/support/v4/import;)Lorg/bouncycastle/asn1/throw;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/import;->new()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/b;->if:Lorg/bouncycastle/asn1/throw;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/e0;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/e0;-><init>(Landroid/support/v4/import;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
