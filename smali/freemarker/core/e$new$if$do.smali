.class Lfreemarker/core/e$new$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/e$new$if;->get(I)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final do:I

.field public final synthetic for:Lfreemarker/core/e$new$if;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lfreemarker/core/e$new$if;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/e$new$if$do;->for:Lfreemarker/core/e$new$if;

    iput p2, p0, Lfreemarker/core/e$new$if$do;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lfreemarker/core/e$new$if;->do(Lfreemarker/core/e$new$if;)I

    move-result p1

    mul-int p2, p2, p1

    iput p2, p0, Lfreemarker/core/e$new$if$do;->do:I

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/e$new$if$do;->do:I

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Lfreemarker/core/e$new$if$do;->for:Lfreemarker/core/e$new$if;

    invoke-static {p1}, Lfreemarker/core/e$new$if;->if(Lfreemarker/core/e$new$if;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lfreemarker/core/e$new$if$do;->for:Lfreemarker/core/e$new$if;

    invoke-static {p1}, Lfreemarker/core/e$new$if;->if(Lfreemarker/core/e$new$if;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    invoke-interface {p1, v0}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lfreemarker/core/e$new$if$do;->for:Lfreemarker/core/e$new$if;

    invoke-static {p1}, Lfreemarker/core/e$new$if;->for(Lfreemarker/core/e$new$if;)I

    move-result p1

    iget-object v1, p0, Lfreemarker/core/e$new$if$do;->for:Lfreemarker/core/e$new$if;

    invoke-static {v1}, Lfreemarker/core/e$new$if;->do(Lfreemarker/core/e$new$if;)I

    move-result v1

    mul-int p1, p1, v1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lfreemarker/core/e$new$if$do;->for:Lfreemarker/core/e$new$if;

    .line 5
    invoke-static {p1}, Lfreemarker/core/e$new$if;->new(Lfreemarker/core/e$new$if;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e$new$if$do;->for:Lfreemarker/core/e$new$if;

    invoke-static {v0}, Lfreemarker/core/e$new$if;->new(Lfreemarker/core/e$new$if;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lfreemarker/core/e$new$if$do;->if:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lfreemarker/core/e$new$if$do;->for:Lfreemarker/core/e$new$if;

    invoke-static {v1}, Lfreemarker/core/e$new$if;->for(Lfreemarker/core/e$new$if;)I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/e$new$if$do;->for:Lfreemarker/core/e$new$if;

    .line 3
    invoke-static {v0}, Lfreemarker/core/e$new$if;->if(Lfreemarker/core/e$new$if;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    iget v1, p0, Lfreemarker/core/e$new$if$do;->do:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lfreemarker/core/e$new$if$do;->for:Lfreemarker/core/e$new$if;

    .line 5
    invoke-static {v0}, Lfreemarker/core/e$new$if;->do(Lfreemarker/core/e$new$if;)I

    move-result v0

    :goto_1
    return v0
.end method
