.class public Landroid/support/v4/jf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private break:[[[B

.field private case:Lorg/bouncycastle/crypto/Digest;

.field private catch:[[B

.field private class:Lorg/bouncycastle/pqc/crypto/gmss/do;

.field private const:Landroid/support/v4/hf0;

.field private do:Landroid/support/v4/kf0;

.field private else:Landroid/support/v4/gg2;

.field public final:Landroid/support/v4/bf0;

.field private for:Lorg/bouncycastle/crypto/Digest;

.field private goto:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private if:[B

.field private new:I

.field private super:Ljava/security/SecureRandom;

.field private this:[I

.field private try:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/kf0;

    invoke-direct {v0}, Landroid/support/v4/kf0;-><init>()V

    iput-object v0, p0, Landroid/support/v4/jf0;->do:Landroid/support/v4/kf0;

    iput-object p1, p0, Landroid/support/v4/jf0;->goto:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/jf0;->for:Lorg/bouncycastle/crypto/Digest;

    iput-object p1, p0, Landroid/support/v4/jf0;->case:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Landroid/support/v4/jf0;->new:I

    new-instance p1, Landroid/support/v4/hf0;

    iget-object v0, p0, Landroid/support/v4/jf0;->for:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p1, v0}, Landroid/support/v4/hf0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Landroid/support/v4/jf0;->const:Landroid/support/v4/hf0;

    return-void
.end method

.method private do()V
    .locals 9

    iget-object v0, p0, Landroid/support/v4/jf0;->for:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Landroid/support/v4/jf0;->final:Landroid/support/v4/bf0;

    check-cast v0, Landroid/support/v4/ef0;

    invoke-virtual {v0}, Landroid/support/v4/ef0;->const()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/ef0;->case(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/support/v4/ef0;->break(I)I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/bf0;->if()Lorg/bouncycastle/pqc/crypto/gmss/do;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/jf0;->class:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/do;->for()I

    move-result v2

    iput v2, p0, Landroid/support/v4/jf0;->try:I

    invoke-virtual {v0}, Landroid/support/v4/ef0;->try()[[B

    move-result-object v2

    iget v3, p0, Landroid/support/v4/jf0;->try:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    iget v3, p0, Landroid/support/v4/jf0;->new:I

    new-array v5, v3, [B

    new-array v5, v3, [B

    invoke-static {v2, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroid/support/v4/jf0;->const:Landroid/support/v4/hf0;

    invoke-virtual {v2, v5}, Landroid/support/v4/hf0;->for([B)[B

    move-result-object v2

    new-instance v3, Landroid/support/v4/gg2;

    iget-object v5, p0, Landroid/support/v4/jf0;->goto:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/jf0;->class:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/gmss/do;->new()[I

    move-result-object v6

    iget v7, p0, Landroid/support/v4/jf0;->try:I

    sub-int/2addr v7, v4

    aget v6, v6, v7

    invoke-direct {v3, v2, v5, v6}, Landroid/support/v4/gg2;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    iput-object v3, p0, Landroid/support/v4/jf0;->else:Landroid/support/v4/gg2;

    invoke-virtual {v0}, Landroid/support/v4/ef0;->new()[[[B

    move-result-object v2

    iget v3, p0, Landroid/support/v4/jf0;->try:I

    new-array v3, v3, [[[B

    iput-object v3, p0, Landroid/support/v4/jf0;->break:[[[B

    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Landroid/support/v4/jf0;->try:I

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Landroid/support/v4/jf0;->break:[[[B

    aget-object v6, v2, v3

    array-length v6, v6

    iget v7, p0, Landroid/support/v4/jf0;->new:I

    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v7, v8, v4

    aput v6, v8, v1

    const-class v6, B

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    aput-object v6, v5, v3

    const/4 v5, 0x0

    :goto_1
    aget-object v6, v2, v3

    array-length v6, v6

    if-ge v5, v6, :cond_0

    aget-object v6, v2, v3

    aget-object v6, v6, v5

    iget-object v7, p0, Landroid/support/v4/jf0;->break:[[[B

    aget-object v7, v7, v3

    aget-object v7, v7, v5

    iget v8, p0, Landroid/support/v4/jf0;->new:I

    invoke-static {v6, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v2, v5, [I

    iput-object v2, p0, Landroid/support/v4/jf0;->this:[I

    invoke-virtual {v0}, Landroid/support/v4/ef0;->else()[I

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/jf0;->this:[I

    iget v5, p0, Landroid/support/v4/jf0;->try:I

    invoke-static {v2, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Landroid/support/v4/jf0;->try:I

    sub-int/2addr v2, v4

    new-array v2, v2, [[B

    iput-object v2, p0, Landroid/support/v4/jf0;->catch:[[B

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Landroid/support/v4/jf0;->try:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/support/v4/ef0;->catch(I)[B

    move-result-object v3

    iget-object v5, p0, Landroid/support/v4/jf0;->catch:[[B

    array-length v6, v3

    new-array v6, v6, [B

    aput-object v6, v5, v2

    aget-object v5, v5, v2

    array-length v6, v3

    invoke-static {v3, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/ef0;->final()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more signatures can be generated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Private key already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private if()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/jf0;->for:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Landroid/support/v4/jf0;->final:Landroid/support/v4/bf0;

    check-cast v0, Landroid/support/v4/gf0;

    invoke-virtual {v0}, Landroid/support/v4/gf0;->for()[B

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/jf0;->if:[B

    invoke-virtual {v0}, Landroid/support/v4/bf0;->if()Lorg/bouncycastle/pqc/crypto/gmss/do;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/jf0;->class:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/do;->for()I

    move-result v0

    iput v0, p0, Landroid/support/v4/jf0;->try:I

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 10

    iget v0, p0, Landroid/support/v4/jf0;->new:I

    new-array v0, v0, [B

    iget-object v0, p0, Landroid/support/v4/jf0;->else:Landroid/support/v4/gg2;

    invoke-virtual {v0, p1}, Landroid/support/v4/gg2;->new([B)[B

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/jf0;->do:Landroid/support/v4/kf0;

    iget-object v1, p0, Landroid/support/v4/jf0;->break:[[[B

    iget v2, p0, Landroid/support/v4/jf0;->try:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/kf0;->for([[B)[B

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/jf0;->do:Landroid/support/v4/kf0;

    iget-object v2, p0, Landroid/support/v4/jf0;->this:[I

    iget v3, p0, Landroid/support/v4/jf0;->try:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v4/kf0;->try(I)[B

    move-result-object v1

    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v3, v2, [B

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v1

    array-length v6, p1

    invoke-static {p1, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length p1, p1

    add-int/2addr v1, p1

    array-length p1, v0

    invoke-static {v0, v5, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v5, [B

    iget v0, p0, Landroid/support/v4/jf0;->try:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/jf0;->do:Landroid/support/v4/kf0;

    iget-object v4, p0, Landroid/support/v4/jf0;->break:[[[B

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/support/v4/kf0;->for([[B)[B

    move-result-object v1

    iget-object v4, p0, Landroid/support/v4/jf0;->do:Landroid/support/v4/kf0;

    iget-object v6, p0, Landroid/support/v4/jf0;->this:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/support/v4/kf0;->try(I)[B

    move-result-object v4

    array-length v6, p1

    new-array v7, v6, [B

    array-length v8, p1

    invoke-static {p1, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v4

    add-int/2addr p1, v6

    iget-object v8, p0, Landroid/support/v4/jf0;->catch:[[B

    aget-object v8, v8, v0

    array-length v8, v8

    add-int/2addr p1, v8

    array-length v8, v1

    add-int/2addr p1, v8

    new-array p1, p1, [B

    invoke-static {v7, v5, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v4

    invoke-static {v4, v5, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/jf0;->catch:[[B

    aget-object v8, v7, v0

    array-length v9, v4

    add-int/2addr v9, v6

    aget-object v7, v7, v0

    array-length v7, v7

    invoke-static {v8, v5, p1, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v6, v4

    iget-object v4, p0, Landroid/support/v4/jf0;->catch:[[B

    aget-object v4, v4, v0

    array-length v4, v4

    add-int/2addr v6, v4

    array-length v4, v1

    invoke-static {v1, v5, p1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v3, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    invoke-static {p1, v5, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p2, Landroid/support/v4/cc1;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/jf0;->super:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/ef0;

    iput-object p1, p0, Landroid/support/v4/jf0;->final:Landroid/support/v4/bf0;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/jf0;->super:Ljava/security/SecureRandom;

    check-cast p2, Landroid/support/v4/ef0;

    iput-object p2, p0, Landroid/support/v4/jf0;->final:Landroid/support/v4/bf0;

    :goto_0
    invoke-direct {p0}, Landroid/support/v4/jf0;->do()V

    goto :goto_1

    :cond_1
    check-cast p2, Landroid/support/v4/gf0;

    iput-object p2, p0, Landroid/support/v4/jf0;->final:Landroid/support/v4/bf0;

    invoke-direct {p0}, Landroid/support/v4/jf0;->if()V

    :goto_1
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 12

    iget-object v0, p0, Landroid/support/v4/jf0;->case:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget v0, p0, Landroid/support/v4/jf0;->try:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_4

    new-instance v4, Landroid/support/v4/fg2;

    iget-object v5, p0, Landroid/support/v4/jf0;->goto:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/jf0;->class:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/gmss/do;->new()[I

    move-result-object v6

    aget v6, v6, v0

    invoke-direct {v4, v5, v6}, Landroid/support/v4/fg2;-><init>(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v4}, Landroid/support/v4/fg2;->for()I

    move-result v5

    iget-object v6, p0, Landroid/support/v4/jf0;->do:Landroid/support/v4/kf0;

    invoke-virtual {v6, p2, v3}, Landroid/support/v4/kf0;->if([BI)I

    move-result v6

    add-int/lit8 v3, v3, 0x4

    new-array v7, v5, [B

    invoke-static {p2, v3, v7, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    invoke-virtual {v4, p1, v7}, Landroid/support/v4/fg2;->do([B[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OTS Public Key is null in GMSSSignature.verify"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v4, p0, Landroid/support/v4/jf0;->class:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/do;->do()[I

    move-result-object v4

    aget v4, v4, v0

    iget v5, p0, Landroid/support/v4/jf0;->new:I

    const/4 v7, 0x2

    new-array v8, v7, [I

    aput v5, v8, v1

    aput v4, v8, v2

    const-class v4, B

    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    const/4 v5, 0x0

    :goto_1
    array-length v8, v4

    if-ge v5, v8, :cond_1

    aget-object v8, v4, v5

    iget v9, p0, Landroid/support/v4/jf0;->new:I

    invoke-static {p2, v3, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, p0, Landroid/support/v4/jf0;->new:I

    add-int/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget v5, p0, Landroid/support/v4/jf0;->new:I

    new-array v5, v5, [B

    array-length v5, v4

    shl-int v5, v1, v5

    add-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_2
    array-length v8, v4

    if-ge v6, v8, :cond_3

    iget v8, p0, Landroid/support/v4/jf0;->new:I

    shl-int/lit8 v9, v8, 0x1

    new-array v10, v9, [B

    rem-int/lit8 v11, v5, 0x2

    if-nez v11, :cond_2

    invoke-static {p1, v2, v10, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, v4, v6

    iget v8, p0, Landroid/support/v4/jf0;->new:I

    invoke-static {p1, v2, v10, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    div-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_2
    aget-object v11, v4, v6

    invoke-static {v11, v2, v10, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, p0, Landroid/support/v4/jf0;->new:I

    array-length v11, p1

    invoke-static {p1, v2, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v7

    :goto_3
    iget-object p1, p0, Landroid/support/v4/jf0;->for:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v10, v2, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Landroid/support/v4/jf0;->for:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iget-object v8, p0, Landroid/support/v4/jf0;->for:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, p1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_4
    iget-object p2, p0, Landroid/support/v4/jf0;->if:[B

    invoke-static {p2, p1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p1

    return p1
.end method
