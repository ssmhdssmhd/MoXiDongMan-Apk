.class public Landroid/support/v4/qg1;
.super Ljava/security/BasicPermission;
.source "SourceFile"


# static fields
.field private static final break:Ljava/lang/String; = "threadlocaldhdefaultparams"

.field private static final case:I = 0x20

.field private static final catch:Ljava/lang/String; = "dhdefaultparams"

.field private static final class:Ljava/lang/String; = "acceptableeccurves"

.field private static final const:Ljava/lang/String; = "additionalecparameters"

.field private static final do:I = 0x1

.field private static final else:I = 0x3f

.field private static final final:Ljava/lang/String; = "all"

.field private static final for:I = 0x4

.field private static final goto:Ljava/lang/String; = "threadlocalecimplicitlyca"

.field private static final if:I = 0x2

.field private static final new:I = 0x8

.field private static final this:Ljava/lang/String; = "ecimplicitlyca"

.field private static final try:I = 0x10


# instance fields
.field private final actions:Ljava/lang/String;

.field private final permissionMask:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    const-string p1, "all"

    iput-object p1, p0, Landroid/support/v4/qg1;->actions:Ljava/lang/String;

    const/16 p1, 0x3f

    iput p1, p0, Landroid/support/v4/qg1;->permissionMask:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Landroid/support/v4/qg1;->actions:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/support/v4/qg1;->do(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/support/v4/qg1;->permissionMask:I

    return-void
.end method

.method private do(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lorg/bouncycastle/util/for;->break(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " ,"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "threadlocalecimplicitlyca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "ecimplicitlyca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "threadlocaldhdefaultparams"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_3
    const-string v2, "dhdefaultparams"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_4
    const-string v2, "acceptableeccurves"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_5
    const-string v2, "additionalecparameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    or-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_6
    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 p1, p1, 0x3f

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    return p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown permissions passed to mask"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/support/v4/qg1;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroid/support/v4/qg1;

    iget v1, p0, Landroid/support/v4/qg1;->permissionMask:I

    iget v3, p1, Landroid/support/v4/qg1;->permissionMask:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qg1;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/support/v4/qg1;->permissionMask:I

    add-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 3

    instance-of v0, p1, Landroid/support/v4/qg1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/support/v4/qg1;

    iget v0, p0, Landroid/support/v4/qg1;->permissionMask:I

    iget p1, p1, Landroid/support/v4/qg1;->permissionMask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
