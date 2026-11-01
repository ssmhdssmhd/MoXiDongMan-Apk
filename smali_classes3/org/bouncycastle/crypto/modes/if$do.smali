.class Lorg/bouncycastle/crypto/modes/if$do;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/modes/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final synthetic do:Lorg/bouncycastle/crypto/modes/if;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/modes/if;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/if$do;->do:Lorg/bouncycastle/crypto/modes/if;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object v0
.end method
