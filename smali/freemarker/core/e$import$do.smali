.class Lfreemarker/core/e$import$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e$import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public do:Lfreemarker/template/TemplateSequenceModel;

.field public final synthetic if:Lfreemarker/core/e$import;


# direct methods
.method public constructor <init>(Lfreemarker/core/e$import;Lfreemarker/template/TemplateSequenceModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/e$import$do;->if:Lfreemarker/core/e$import;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/e$import$do;->do:Lfreemarker/template/TemplateSequenceModel;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v2, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    goto :goto_2

    .line 5
    :cond_0
    instance-of v2, p1, Lfreemarker/template/TemplateSequenceModel;

    const/4 v3, 0x2

    const-string v4, "The argument to ?"

    const/4 v5, 0x3

    if-eqz v2, :cond_3

    .line 6
    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    .line 7
    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v2

    .line 8
    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_2

    .line 9
    invoke-interface {p1, v7}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v8

    .line 10
    :try_start_0
    move-object v9, v8

    check-cast v9, Lfreemarker/template/TemplateScalarModel;

    .line 11
    invoke-interface {v9}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 12
    instance-of v8, v8, Lfreemarker/template/TemplateScalarModel;

    if-eqz v8, :cond_1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Landroid/support/v4/vl2;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v0

    iget-object v0, p0, Lfreemarker/core/e$import$do;->if:Lfreemarker/core/e$import;

    iget-object v0, v0, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v0, v2, v1

    const-string v0, "(key), when it\'s a sequence, must be a sequence of strings, but the item at index "

    aput-object v0, v2, v3

    .line 14
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x4

    const-string v1, " is not a string."

    aput-object v1, v2, v0

    invoke-direct {p1, v2}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw p1

    :cond_2
    move-object v1, v6

    .line 15
    :goto_2
    iget-object p1, p0, Lfreemarker/core/e$import$do;->do:Lfreemarker/template/TemplateSequenceModel;

    invoke-static {p1, v1}, Lfreemarker/core/e$while;->t(Lfreemarker/template/TemplateSequenceModel;[Ljava/lang/String;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    new-instance p1, Landroid/support/v4/vl2;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v4, v2, v0

    iget-object v0, p0, Lfreemarker/core/e$import$do;->if:Lfreemarker/core/e$import;

    iget-object v0, v0, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v0, v2, v1

    const-string v0, "(key) must be a string (the name of the subvariable), or a sequence of strings (the \"path\" to the subvariable)."

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw p1

    .line 17
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/core/e$import$do;->if:Lfreemarker/core/e$import;

    iget-object v2, v2, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1, v1}, Lfreemarker/core/b5;->final(Ljava/lang/String;II)Landroid/support/v4/k52;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
