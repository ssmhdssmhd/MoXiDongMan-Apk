.class public abstract Lcom/google/common/collect/interface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/interface$if;
    }
.end annotation


# static fields
.field private static final do:Lcom/google/common/collect/interface;

.field private static final for:Lcom/google/common/collect/interface;

.field private static final if:Lcom/google/common/collect/interface;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/interface$do;

    invoke-direct {v0}, Lcom/google/common/collect/interface$do;-><init>()V

    sput-object v0, Lcom/google/common/collect/interface;->do:Lcom/google/common/collect/interface;

    .line 2
    new-instance v0, Lcom/google/common/collect/interface$if;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/interface$if;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/interface;->if:Lcom/google/common/collect/interface;

    .line 3
    new-instance v0, Lcom/google/common/collect/interface$if;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/interface$if;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/interface;->for:Lcom/google/common/collect/interface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/interface$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/interface;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcom/google/common/collect/interface;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/interface;->if:Lcom/google/common/collect/interface;

    return-object v0
.end method

.method public static final()Lcom/google/common/collect/interface;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/interface;->do:Lcom/google/common/collect/interface;

    return-object v0
.end method

.method public static synthetic for()Lcom/google/common/collect/interface;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/interface;->do:Lcom/google/common/collect/interface;

    return-object v0
.end method

.method public static synthetic if()Lcom/google/common/collect/interface;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/interface;->for:Lcom/google/common/collect/interface;

    return-object v0
.end method


# virtual methods
.method public abstract break(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/interface;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/interface;"
        }
    .end annotation
.end method

.method public abstract case(II)Lcom/google/common/collect/interface;
.end method

.method public abstract catch(ZZ)Lcom/google/common/collect/interface;
.end method

.method public abstract class(ZZ)Lcom/google/common/collect/interface;
.end method

.method public abstract const()I
.end method

.method public abstract else(JJ)Lcom/google/common/collect/interface;
.end method

.method public final goto(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/common/collect/interface;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/interface;->catch(ZZ)Lcom/google/common/collect/interface;

    move-result-object p1

    return-object p1
.end method

.method public abstract new(DD)Lcom/google/common/collect/interface;
.end method

.method public abstract this(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/interface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)",
            "Lcom/google/common/collect/interface;"
        }
    .end annotation
.end method

.method public abstract try(FF)Lcom/google/common/collect/interface;
.end method
