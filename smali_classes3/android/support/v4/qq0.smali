.class public final Landroid/support/v4/qq0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/iz1;
    version = "1.1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/qq0$do;
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u0005B\u001b\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J!\u0010\n\u001a\u00020\u00002\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroid/support/v4/qq0;",
        "",
        "",
        "toString",
        "Lkotlin/reflect/for;",
        "do",
        "Lkotlin/reflect/KType;",
        "if",
        "variance",
        "type",
        "new",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Lkotlin/reflect/for;",
        "goto",
        "()Lkotlin/reflect/for;",
        "Lkotlin/reflect/KType;",
        "else",
        "()Lkotlin/reflect/KType;",
        "<init>",
        "(Lkotlin/reflect/for;Lkotlin/reflect/KType;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final for:Landroid/support/v4/qq0;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field public static final new:Landroid/support/v4/qq0$do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# instance fields
.field private final do:Lkotlin/reflect/for;
    .annotation build Landroid/support/v4/z41;
    .end annotation
.end field

.field private final if:Lkotlin/reflect/KType;
    .annotation build Landroid/support/v4/z41;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/qq0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/qq0$do;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Landroid/support/v4/qq0;->new:Landroid/support/v4/qq0$do;

    .line 1
    new-instance v0, Landroid/support/v4/qq0;

    invoke-direct {v0, v1, v1}, Landroid/support/v4/qq0;-><init>(Lkotlin/reflect/for;Lkotlin/reflect/KType;)V

    sput-object v0, Landroid/support/v4/qq0;->for:Landroid/support/v4/qq0;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/for;Lkotlin/reflect/KType;)V
    .locals 3
    .param p1    # Lkotlin/reflect/for;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KType;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/qq0;->do:Lkotlin/reflect/for;

    iput-object p2, p0, Landroid/support/v4/qq0;->if:Lkotlin/reflect/KType;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ne v2, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    if-nez p1, :cond_3

    const-string p1, "Star projection must have no type specified."

    goto :goto_3

    .line 2
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The projection variance "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " requires type to be specified."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    return-void
.end method

.method public static final case(Lkotlin/reflect/KType;)Landroid/support/v4/qq0;
    .locals 1
    .param p0    # Lkotlin/reflect/KType;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/aq0;
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    sget-object v0, Landroid/support/v4/qq0;->new:Landroid/support/v4/qq0$do;

    invoke-virtual {v0, p0}, Landroid/support/v4/qq0$do;->if(Lkotlin/reflect/KType;)Landroid/support/v4/qq0;

    move-result-object p0

    return-object p0
.end method

.method public static final for(Lkotlin/reflect/KType;)Landroid/support/v4/qq0;
    .locals 1
    .param p0    # Lkotlin/reflect/KType;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/aq0;
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    sget-object v0, Landroid/support/v4/qq0;->new:Landroid/support/v4/qq0$do;

    invoke-virtual {v0, p0}, Landroid/support/v4/qq0$do;->do(Lkotlin/reflect/KType;)Landroid/support/v4/qq0;

    move-result-object p0

    return-object p0
.end method

.method public static final this(Lkotlin/reflect/KType;)Landroid/support/v4/qq0;
    .locals 1
    .param p0    # Lkotlin/reflect/KType;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/aq0;
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    sget-object v0, Landroid/support/v4/qq0;->new:Landroid/support/v4/qq0$do;

    invoke-virtual {v0, p0}, Landroid/support/v4/qq0$do;->try(Lkotlin/reflect/KType;)Landroid/support/v4/qq0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic try(Landroid/support/v4/qq0;Lkotlin/reflect/for;Lkotlin/reflect/KType;ILjava/lang/Object;)Landroid/support/v4/qq0;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroid/support/v4/qq0;->do:Lkotlin/reflect/for;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroid/support/v4/qq0;->if:Lkotlin/reflect/KType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/qq0;->new(Lkotlin/reflect/for;Lkotlin/reflect/KType;)Landroid/support/v4/qq0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final do()Lkotlin/reflect/for;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/qq0;->do:Lkotlin/reflect/for;

    return-object v0
.end method

.method public final else()Lkotlin/reflect/KType;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/qq0;->if:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Landroid/support/v4/qq0;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/qq0;

    iget-object v0, p0, Landroid/support/v4/qq0;->do:Lkotlin/reflect/for;

    iget-object v1, p1, Landroid/support/v4/qq0;->do:Lkotlin/reflect/for;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/qq0;->if:Lkotlin/reflect/KType;

    iget-object p1, p1, Landroid/support/v4/qq0;->if:Lkotlin/reflect/KType;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final goto()Lkotlin/reflect/for;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/qq0;->do:Lkotlin/reflect/for;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/support/v4/qq0;->do:Lkotlin/reflect/for;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/support/v4/qq0;->if:Lkotlin/reflect/KType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final if()Lkotlin/reflect/KType;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/qq0;->if:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final new(Lkotlin/reflect/for;Lkotlin/reflect/KType;)Landroid/support/v4/qq0;
    .locals 1
    .param p1    # Lkotlin/reflect/for;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KType;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    new-instance v0, Landroid/support/v4/qq0;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/qq0;-><init>(Lkotlin/reflect/for;Lkotlin/reflect/KType;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/qq0;->do:Lkotlin/reflect/for;

    if-nez v0, :cond_0

    const-string v0, "*"

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/support/v4/rq0;->do:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/qq0;->if:Lkotlin/reflect/KType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/w31;

    invoke-direct {v0}, Landroid/support/v4/w31;-><init>()V

    throw v0

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/qq0;->if:Lkotlin/reflect/KType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_3
    iget-object v0, p0, Landroid/support/v4/qq0;->if:Lkotlin/reflect/KType;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
