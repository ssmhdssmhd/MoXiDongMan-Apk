.class Lorg/bouncycastle/crypto/util/else$if;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lorg/bouncycastle/crypto/util/else;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/util/else;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/else$if;->do:Lorg/bouncycastle/crypto/util/else;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/util/else;Lorg/bouncycastle/crypto/util/else$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/else$if;-><init>(Lorg/bouncycastle/crypto/util/else;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    return-void
.end method
