.class public Landroid/support/v4/ov0$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/ov0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# static fields
.field public static final break:I = 0x2

.field public static final goto:I = 0x0

.field public static final this:I = 0x1


# instance fields
.field public case:[Ljava/lang/Object;

.field public do:Lorg/bouncycastle/i18n/filter/Filter;

.field public final synthetic else:Landroid/support/v4/ov0;

.field public for:[I

.field public if:[Z

.field public new:[Ljava/lang/Object;

.field public try:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v4/ov0;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/ov0$do;-><init>(Landroid/support/v4/ov0;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ov0;[Ljava/lang/Object;)V
    .locals 4

    iput-object p1, p0, Landroid/support/v4/ov0$do;->else:Landroid/support/v4/ov0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/ov0$do;->do:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object p2, p0, Landroid/support/v4/ov0$do;->new:[Ljava/lang/Object;

    array-length p1, p2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/ov0$do;->try:[Ljava/lang/Object;

    array-length p1, p2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/ov0$do;->case:[Ljava/lang/Object;

    array-length p1, p2

    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/support/v4/ov0$do;->if:[Z

    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v4/ov0$do;->for:[I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget-object v1, p2, v0

    instance-of v1, v1, Landroid/support/v4/b92;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/ov0$do;->try:[Ljava/lang/Object;

    aget-object v2, p2, v0

    check-cast v2, Landroid/support/v4/b92;

    invoke-virtual {v2}, Landroid/support/v4/b92;->do()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/support/v4/ov0$do;->for:[I

    aput p1, v1, v0

    goto :goto_1

    :cond_0
    aget-object v1, p2, v0

    instance-of v1, v1, Landroid/support/v4/uc2;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/ov0$do;->try:[Ljava/lang/Object;

    aget-object v3, p2, v0

    check-cast v3, Landroid/support/v4/uc2;

    invoke-virtual {v3}, Landroid/support/v4/uc2;->do()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    aget-object v1, p2, v0

    instance-of v1, v1, Landroid/support/v4/vc2;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/ov0$do;->for:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v4/ov0$do;->for:[I

    aput v2, v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v4/ov0$do;->try:[Ljava/lang/Object;

    aget-object v3, p2, v0

    aput-object v3, v1, v0

    iget-object v1, p0, Landroid/support/v4/ov0$do;->for:[I

    aput v2, v1, v0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/ov0$do;->if:[Z

    iget-object v2, p0, Landroid/support/v4/ov0$do;->try:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, Landroid/support/v4/mv0;

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private do(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ov0$do;->do:Lorg/bouncycastle/i18n/filter/Filter;

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    const-string p2, "null"

    :cond_0
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/i18n/filter/Filter;->doFilterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/i18n/filter/Filter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method


# virtual methods
.method public case(Lorg/bouncycastle/i18n/filter/Filter;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/ov0$do;->do:Lorg/bouncycastle/i18n/filter/Filter;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/ov0$do;->try:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/ov0$do;->case:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/ov0$do;->do:Lorg/bouncycastle/i18n/filter/Filter;

    return-void
.end method

.method public for()Lorg/bouncycastle/i18n/filter/Filter;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov0$do;->do:Lorg/bouncycastle/i18n/filter/Filter;

    return-object v0
.end method

.method public if()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov0$do;->new:[Ljava/lang/Object;

    return-object v0
.end method

.method public new(Ljava/util/Locale;)[Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/ov0$do;->try:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/ov0$do;->try:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/ov0$do;->case:[Ljava/lang/Object;

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    aget-object v2, v3, v1

    goto :goto_1

    :cond_0
    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/support/v4/ov0$do;->if:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    check-cast v2, Landroid/support/v4/mv0;

    invoke-virtual {v2, p1}, Landroid/support/v4/mv0;->final(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/ov0$do;->for:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, v2}, Landroid/support/v4/ov0$do;->do(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/support/v4/ov0$do;->for:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, v2}, Landroid/support/v4/ov0$do;->do(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/ov0$do;->case:[Ljava/lang/Object;

    aput-object v2, v3, v1

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public try()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov0$do;->try:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
