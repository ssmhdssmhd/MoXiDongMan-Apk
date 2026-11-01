.class public Lorg/bouncycastle/crypto/params/do$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/params/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private case:I

.field private do:[B

.field private else:I

.field private for:[B

.field private final goto:I

.field private if:[B

.field private new:I

.field private this:Lorg/bouncycastle/crypto/CharToByteConverter;

.field private try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/do$if;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/new;->UTF8:Lorg/bouncycastle/crypto/new;

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/do$if;->this:Lorg/bouncycastle/crypto/CharToByteConverter;

    iput p1, p0, Lorg/bouncycastle/crypto/params/do$if;->goto:I

    const/4 p1, 0x1

    iput p1, p0, Lorg/bouncycastle/crypto/params/do$if;->case:I

    const/16 p1, 0x1000

    iput p1, p0, Lorg/bouncycastle/crypto/params/do$if;->try:I

    const/4 p1, 0x3

    iput p1, p0, Lorg/bouncycastle/crypto/params/do$if;->new:I

    const/16 p1, 0x13

    iput p1, p0, Lorg/bouncycastle/crypto/params/do$if;->else:I

    return-void
.end method


# virtual methods
.method public break([B)Lorg/bouncycastle/crypto/params/do$if;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/do$if;->if:[B

    return-object p0
.end method

.method public case(I)Lorg/bouncycastle/crypto/params/do$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/params/do$if;->try:I

    return-object p0
.end method

.method public catch(I)Lorg/bouncycastle/crypto/params/do$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/params/do$if;->else:I

    return-object p0
.end method

.method public do()Lorg/bouncycastle/crypto/params/do;
    .locals 12

    new-instance v11, Lorg/bouncycastle/crypto/params/do;

    iget v1, p0, Lorg/bouncycastle/crypto/params/do$if;->goto:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/do$if;->do:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/do$if;->if:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/params/do$if;->for:[B

    iget v5, p0, Lorg/bouncycastle/crypto/params/do$if;->new:I

    iget v6, p0, Lorg/bouncycastle/crypto/params/do$if;->try:I

    iget v7, p0, Lorg/bouncycastle/crypto/params/do$if;->case:I

    iget v8, p0, Lorg/bouncycastle/crypto/params/do$if;->else:I

    iget-object v9, p0, Lorg/bouncycastle/crypto/params/do$if;->this:Lorg/bouncycastle/crypto/CharToByteConverter;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/crypto/params/do;-><init>(I[B[B[BIIIILorg/bouncycastle/crypto/CharToByteConverter;Lorg/bouncycastle/crypto/params/do$do;)V

    return-object v11
.end method

.method public else(I)Lorg/bouncycastle/crypto/params/do$if;
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iput p1, p0, Lorg/bouncycastle/crypto/params/do$if;->try:I

    return-object p0
.end method

.method public for([B)Lorg/bouncycastle/crypto/params/do$if;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/do$if;->for:[B

    return-object p0
.end method

.method public goto(I)Lorg/bouncycastle/crypto/params/do$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/params/do$if;->case:I

    return-object p0
.end method

.method public if()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/do$if;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->const([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/do$if;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->const([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/do$if;->for:[B

    invoke-static {v0}, Landroid/support/v4/q3;->const([B)V

    return-void
.end method

.method public new(Lorg/bouncycastle/crypto/CharToByteConverter;)Lorg/bouncycastle/crypto/params/do$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/do$if;->this:Lorg/bouncycastle/crypto/CharToByteConverter;

    return-object p0
.end method

.method public this([B)Lorg/bouncycastle/crypto/params/do$if;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/do$if;->do:[B

    return-object p0
.end method

.method public try(I)Lorg/bouncycastle/crypto/params/do$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/params/do$if;->new:I

    return-object p0
.end method
