.class public final Landroid/support/v4/qq0$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/qq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u0013\u0010\n\u001a\u00020\u00048F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\u000b\u001a\u00020\u00048\u0000@\u0001X\u0081\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u0012\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "android/support/v4/qq0$do",
        "",
        "Lkotlin/reflect/KType;",
        "type",
        "Landroid/support/v4/qq0;",
        "try",
        "do",
        "if",
        "for",
        "()Landroid/support/v4/qq0;",
        "STAR",
        "star",
        "Landroid/support/v4/qq0;",
        "getStar$annotations",
        "()V",
        "<init>",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/rx;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/qq0$do;-><init>()V

    return-void
.end method

.method public static synthetic new()V
    .locals 0
    .annotation build Landroid/support/v4/wg1;
    .end annotation

    return-void
.end method


# virtual methods
.method public final do(Lkotlin/reflect/KType;)Landroid/support/v4/qq0;
    .locals 2
    .param p1    # Lkotlin/reflect/KType;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/aq0;
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/support/v4/qq0;

    sget-object v1, Lkotlin/reflect/for;->IN:Lkotlin/reflect/for;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/qq0;-><init>(Lkotlin/reflect/for;Lkotlin/reflect/KType;)V

    return-object v0
.end method

.method public final for()Landroid/support/v4/qq0;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/qq0;->for:Landroid/support/v4/qq0;

    return-object v0
.end method

.method public final if(Lkotlin/reflect/KType;)Landroid/support/v4/qq0;
    .locals 2
    .param p1    # Lkotlin/reflect/KType;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/aq0;
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/support/v4/qq0;

    sget-object v1, Lkotlin/reflect/for;->OUT:Lkotlin/reflect/for;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/qq0;-><init>(Lkotlin/reflect/for;Lkotlin/reflect/KType;)V

    return-object v0
.end method

.method public final try(Lkotlin/reflect/KType;)Landroid/support/v4/qq0;
    .locals 2
    .param p1    # Lkotlin/reflect/KType;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/aq0;
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/support/v4/qq0;

    sget-object v1, Lkotlin/reflect/for;->INVARIANT:Lkotlin/reflect/for;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/qq0;-><init>(Lkotlin/reflect/for;Lkotlin/reflect/KType;)V

    return-object v0
.end method
