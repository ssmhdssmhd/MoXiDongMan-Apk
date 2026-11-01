.class Lfreemarker/core/f$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/f$if;->r(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/core/d0;

.field public final synthetic for:Lfreemarker/core/f$if;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/core/f$if;Lfreemarker/core/d0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    iput-object p2, p0, Lfreemarker/core/f$if$do;->do:Lfreemarker/core/d0;

    iput-object p3, p0, Lfreemarker/core/f$if$do;->if:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Lfreemarker/core/return;->e(III)V

    .line 3
    iget-object v1, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Lfreemarker/core/return;->h(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/4 v1, 0x2

    const-string v5, "?"

    if-ltz v8, :cond_7

    const/4 v6, 0x0

    if-le v0, v2, :cond_6

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    .line 5
    instance-of v7, v0, Lfreemarker/template/TemplateScalarModel;

    if-nez v7, :cond_2

    .line 6
    iget-object v7, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    invoke-virtual {v7}, Lfreemarker/core/f$if;->t()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7
    instance-of v7, v0, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz v7, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    iget-object v1, v1, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v0}, Lfreemarker/core/b5;->private(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    iget-object v1, v1, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v0}, Lfreemarker/core/b5;->package(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    :goto_0
    iget-object v7, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    invoke-virtual {v7, p1, v1}, Lfreemarker/core/return;->i(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_3
    if-eqz v6, :cond_5

    .line 12
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    new-instance p1, Landroid/support/v4/vl2;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v5, v0, v4

    iget-object v3, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    iget-object v3, v3, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "(...) argument #3 can\'t be negative."

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_1
    move-object v9, v0

    move-object v10, v6

    goto :goto_2

    :cond_6
    move-object v9, v6

    move-object v10, v9

    .line 14
    :goto_2
    :try_start_0
    iget-object p1, p0, Lfreemarker/core/f$if$do;->do:Lfreemarker/core/d0;

    invoke-virtual {p1}, Lfreemarker/core/t;->j()Lfreemarker/core/p4;

    move-result-object v6

    .line 15
    iget-object v5, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    iget-object v7, p0, Lfreemarker/core/f$if$do;->if:Ljava/lang/String;

    iget-object v11, p0, Lfreemarker/core/f$if$do;->do:Lfreemarker/core/d0;

    invoke-virtual/range {v5 .. v11}, Lfreemarker/core/f$if;->u(Lfreemarker/core/p4;Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Landroid/support/v4/vl2;

    iget-object v1, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    iget-object v2, p0, Lfreemarker/core/f$if$do;->do:Lfreemarker/core/d0;

    const-string v3, "Truncation failed; see cause exception"

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/h0;Ljava/lang/Throwable;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_7
    new-instance p1, Landroid/support/v4/vl2;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v5, v0, v4

    iget-object v3, p0, Lfreemarker/core/f$if$do;->for:Lfreemarker/core/f$if;

    iget-object v3, v3, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "(...) argument #1 can\'t be negative."

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw p1
.end method
