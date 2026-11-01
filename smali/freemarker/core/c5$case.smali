.class Lfreemarker/core/c5$case;
.super Lfreemarker/core/c5$break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/c5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "case"
.end annotation


# instance fields
.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic if:Lfreemarker/core/c5;


# direct methods
.method private constructor <init>(Lfreemarker/core/c5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/c5$case;->if:Lfreemarker/core/c5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lfreemarker/core/c5$break;-><init>(Lfreemarker/core/c5$do;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/core/c5$case;->do:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/c5;Lfreemarker/core/c5$do;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lfreemarker/core/c5$case;-><init>(Lfreemarker/core/c5;)V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lfreemarker/core/c5$case;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lfreemarker/core/c5$case;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lfreemarker/core/c5$case;->if:Lfreemarker/core/c5;

    invoke-static {v3, v2}, Lfreemarker/core/c5;->try(Lfreemarker/core/c5;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/c5$case;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public if(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/c5$case;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
