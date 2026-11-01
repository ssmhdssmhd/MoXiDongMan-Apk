.class public Landroid/support/v4/ws;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Lorg/bouncycastle/asn1/catch;

.field public static final for:Lorg/bouncycastle/asn1/catch;

.field public static final if:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.3029"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/ws;->do:Lorg/bouncycastle/asn1/catch;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    const-string v2, "5"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ws;->if:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ws;->for:Lorg/bouncycastle/asn1/catch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
