.class Lfreemarker/core/e$new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateSequenceModel;

.field public final synthetic if:Lfreemarker/core/e$new;


# direct methods
.method private constructor <init>(Lfreemarker/core/e$new;Lfreemarker/template/TemplateSequenceModel;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/e$new$do;->if:Lfreemarker/core/e$new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/e$new$do;->do:Lfreemarker/template/TemplateSequenceModel;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/e$new;Lfreemarker/template/TemplateSequenceModel;Lfreemarker/core/e$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/e$new$do;-><init>(Lfreemarker/core/e$new;Lfreemarker/template/TemplateSequenceModel;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e$new$do;->if:Lfreemarker/core/e$new;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lfreemarker/core/return;->g(Ljava/util/List;II)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/e$new$do;->if:Lfreemarker/core/e$new;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lfreemarker/core/return;->h(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v2, Lfreemarker/core/e$new$if;

    iget-object v3, p0, Lfreemarker/core/e$new$do;->do:Lfreemarker/template/TemplateSequenceModel;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-le v4, v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    invoke-direct {v2, v3, v0, p1, v5}, Lfreemarker/core/e$new$if;-><init>(Lfreemarker/template/TemplateSequenceModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/e$do;)V

    return-object v2

    .line 5
    :cond_1
    new-instance p1, Landroid/support/v4/vl2;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "The 1st argument to ?"

    aput-object v4, v0, v3

    iget-object v3, p0, Lfreemarker/core/e$new$do;->if:Lfreemarker/core/e$new;

    iget-object v3, v3, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v1, " (...) must be at least 1."

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw p1
.end method
