.class final Lcom/google/common/eventbus/if$if;
.super Lcom/google/common/eventbus/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field private static final do:Lcom/google/common/eventbus/if$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/eventbus/if$if;

    invoke-direct {v0}, Lcom/google/common/eventbus/if$if;-><init>()V

    sput-object v0, Lcom/google/common/eventbus/if$if;->do:Lcom/google/common/eventbus/if$if;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/eventbus/if;-><init>()V

    return-void
.end method

.method public static synthetic try()Lcom/google/common/eventbus/if$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/eventbus/if$if;->do:Lcom/google/common/eventbus/if$if;

    return-object v0
.end method


# virtual methods
.method public do(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lcom/google/common/eventbus/new;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/new;

    invoke-virtual {v0, p1}, Lcom/google/common/eventbus/new;->try(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
