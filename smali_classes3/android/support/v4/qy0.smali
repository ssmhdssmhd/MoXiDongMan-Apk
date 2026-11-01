.class public Landroid/support/v4/qy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final break:Ljava/lang/String; = "SHA-512"

.field public static final case:Ljava/lang/String; = "SHA-1"

.field public static final catch:I = 0xb

.field public static final class:I = 0x32

.field public static final else:Ljava/lang/String; = "SHA-224"

.field public static final goto:Ljava/lang/String; = "SHA-256"

.field public static final this:Ljava/lang/String; = "SHA-384"


# instance fields
.field private final do:I

.field private final for:I

.field private final if:I

.field private new:I

.field private final try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xb

    const/16 v1, 0x32

    const-string v2, "SHA-256"

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/qy0;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, "SHA-256"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/qy0;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const-string v0, "SHA-256"

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/qy0;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const-string v0, "SHA-256"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/qy0;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/qy0;->do:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/16 v1, 0x20

    if-gt p1, v1, :cond_3

    shl-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/qy0;->for:I

    iput p2, p0, Landroid/support/v4/qy0;->if:I

    if-ltz p2, :cond_2

    if-gt p2, v0, :cond_1

    invoke-static {p3}, Landroid/support/v4/qe1;->if(I)I

    move-result p2

    if-ne p2, p1, :cond_0

    invoke-static {p3}, Landroid/support/v4/qe1;->case(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iput p3, p0, Landroid/support/v4/qy0;->new:I

    iput-object p4, p0, Landroid/support/v4/qy0;->try:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "polynomial is not a field polynomial for GF(2^m)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "t must be less than n = 2^m"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "t must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " m is too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "m must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v1, 0x20

    if-gt p1, v1, :cond_2

    iput p1, p0, Landroid/support/v4/qy0;->do:I

    shl-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/qy0;->for:I

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_0

    iput p2, p0, Landroid/support/v4/qy0;->if:I

    invoke-static {p1}, Landroid/support/v4/qe1;->try(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/qy0;->new:I

    iput-object p3, p0, Landroid/support/v4/qy0;->try:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "t must be less than n = 2^m"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "t must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "m is too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "m must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, v0, 0x1

    div-int/2addr p1, v1

    iput p1, p0, Landroid/support/v4/qy0;->if:I

    iput v1, p0, Landroid/support/v4/qy0;->do:I

    iput v0, p0, Landroid/support/v4/qy0;->for:I

    invoke-static {v1}, Landroid/support/v4/qe1;->try(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/qy0;->new:I

    iput-object p2, p0, Landroid/support/v4/qy0;->try:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key size must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qy0;->try:Ljava/lang/String;

    return-object v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/qy0;->do:I

    return v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Landroid/support/v4/qy0;->new:I

    return v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Landroid/support/v4/qy0;->for:I

    return v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Landroid/support/v4/qy0;->if:I

    return v0
.end method
