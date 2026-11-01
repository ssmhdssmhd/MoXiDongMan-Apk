.class public Landroid/support/v4/z21;
.super Lorg/bouncycastle/asn1/instanceof;
.source "SourceFile"


# static fields
.field public static final break:I = 0x2

.field public static final case:I = 0x20

.field public static final catch:I = 0x1

.field public static final else:I = 0x10

.field public static final goto:I = 0x8

.field public static final new:I = 0x80

.field public static final this:I = 0x4

.field public static final try:I = 0x40


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/if;->final(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/if;->while(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/instanceof;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/instanceof;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/if;->throw()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/instanceof;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetscapeCertType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/asn1/if;->do:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
