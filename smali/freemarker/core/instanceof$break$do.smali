.class Lfreemarker/core/instanceof$break$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/instanceof$break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Lfreemarker/core/d1$do;

.field public final synthetic if:Lfreemarker/core/instanceof$break;


# direct methods
.method private constructor <init>(Lfreemarker/core/instanceof$break;Lfreemarker/core/d1$do;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/instanceof$break$do;->if:Lfreemarker/core/instanceof$break;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/instanceof$break$do;->do:Lfreemarker/core/d1$do;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/instanceof$break;Lfreemarker/core/d1$do;Lfreemarker/core/instanceof$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/instanceof$break$do;-><init>(Lfreemarker/core/instanceof$break;Lfreemarker/core/d1$do;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/instanceof$break$do;->if:Lfreemarker/core/instanceof$break;

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-virtual {v0, p1, v1, v2}, Lfreemarker/core/return;->g(Ljava/util/List;II)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/instanceof$break$do;->do:Lfreemarker/core/d1$do;

    invoke-virtual {v0}, Lfreemarker/core/d1$do;->try()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
