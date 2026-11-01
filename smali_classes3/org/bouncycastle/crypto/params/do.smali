.class public Lorg/bouncycastle/crypto/params/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/params/do$if;
    }
.end annotation


# static fields
.field public static final break:I = 0x0

.field public static final catch:I = 0x1

.field public static final class:I = 0x2

.field public static final const:I = 0x10

.field public static final final:I = 0x13

.field private static final import:I = 0x1

.field private static final native:I = 0x13

.field private static final super:I = 0x3

.field private static final throw:I = 0xc

.field private static final while:I = 0x1


# instance fields
.field private final case:I

.field private final do:[B

.field private final else:I

.field private final for:[B

.field private final goto:I

.field private final if:[B

.field private final new:I

.field private final this:Lorg/bouncycastle/crypto/CharToByteConverter;

.field private final try:I


# direct methods
.method private constructor <init>(I[B[B[BIIIILorg/bouncycastle/crypto/CharToByteConverter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/do;->do:[B

    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/do;->if:[B

    invoke-static {p4}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/do;->for:[B

    iput p5, p0, Lorg/bouncycastle/crypto/params/do;->new:I

    iput p6, p0, Lorg/bouncycastle/crypto/params/do;->try:I

    iput p7, p0, Lorg/bouncycastle/crypto/params/do;->case:I

    iput p8, p0, Lorg/bouncycastle/crypto/params/do;->else:I

    iput p1, p0, Lorg/bouncycastle/crypto/params/do;->goto:I

    iput-object p9, p0, Lorg/bouncycastle/crypto/params/do;->this:Lorg/bouncycastle/crypto/CharToByteConverter;

    return-void
.end method

.method public synthetic constructor <init>(I[B[B[BIIIILorg/bouncycastle/crypto/CharToByteConverter;Lorg/bouncycastle/crypto/params/do$do;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/bouncycastle/crypto/params/do;-><init>(I[B[B[BIIIILorg/bouncycastle/crypto/CharToByteConverter;)V

    return-void
.end method


# virtual methods
.method public break()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/do;->else:I

    return v0
.end method

.method public case()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/do;->try:I

    return v0
.end method

.method public do()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/do;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->const([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/do;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->const([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/do;->for:[B

    invoke-static {v0}, Landroid/support/v4/q3;->const([B)V

    return-void
.end method

.method public else()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/do;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public for()Lorg/bouncycastle/crypto/CharToByteConverter;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/do;->this:Lorg/bouncycastle/crypto/CharToByteConverter;

    return-object v0
.end method

.method public goto()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/do;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/do;->for:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/do;->new:I

    return v0
.end method

.method public this()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/do;->goto:I

    return v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/do;->case:I

    return v0
.end method
