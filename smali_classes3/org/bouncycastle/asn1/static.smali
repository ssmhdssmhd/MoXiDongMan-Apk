.class Lorg/bouncycastle/asn1/static;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Lorg/bouncycastle/asn1/package;

.field public static final if:Lorg/bouncycastle/asn1/continue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/package;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/package;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/static;->do:Lorg/bouncycastle/asn1/package;

    new-instance v0, Lorg/bouncycastle/asn1/continue;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/continue;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/static;->if:Lorg/bouncycastle/asn1/continue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/support/v4/import;)Lorg/bouncycastle/asn1/package;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/import;->new()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/static;->do:Lorg/bouncycastle/asn1/package;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/package;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/package;-><init>(Landroid/support/v4/import;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static if(Landroid/support/v4/import;)Lorg/bouncycastle/asn1/continue;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/import;->new()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/static;->if:Lorg/bouncycastle/asn1/continue;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/continue;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/continue;-><init>(Landroid/support/v4/import;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
