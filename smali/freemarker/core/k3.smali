.class final Lfreemarker/core/k3;
.super Lfreemarker/core/h0;
.source "SourceFile"


# static fields
.field public static final catch:I = 0x0

.field public static final class:I = 0x1

.field public static final const:I = 0x2

.field public static final final:I = 0x3


# instance fields
.field public final break:I

.field public final goto:Lfreemarker/core/h0;

.field public final this:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/h0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/k3;->goto:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/k3;->this:Lfreemarker/core/h0;

    .line 4
    iput p3, p0, Lfreemarker/core/k3;->break:I

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lfreemarker/core/k3;->break:I

    const-string v1, ".."

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "..*"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/mc;

    iget v1, p0, Lfreemarker/core/k3;->break:I

    invoke-direct {v0, v1}, Landroid/support/v4/mc;-><init>(I)V

    throw v0

    :cond_1
    return-object v1

    :cond_2
    const-string v0, "..<"

    return-object v0

    :cond_3
    return-object v1
.end method

.method public continue(Lfreemarker/core/d0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/h2;

    new-instance v1, Lfreemarker/core/import;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lfreemarker/core/import;-><init>(IIZZ)V

    invoke-direct {v0, p0, v1, p1}, Lfreemarker/core/h2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/k3;->break:I

    return v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/k3;->this:Lfreemarker/core/h0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/core/k3;->goto:Lfreemarker/core/h0;

    invoke-virtual {v2}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfreemarker/core/k3;->case()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/core/f3;->do(I)Lfreemarker/core/f3;

    move-result-object p1

    return-object p1
.end method

.method public instanceof()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/core/k3;->this:Lfreemarker/core/h0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    iget-object v3, p0, Lfreemarker/core/h0;->else:Lfreemarker/template/TemplateModel;

    if-nez v3, :cond_2

    iget-object v3, p0, Lfreemarker/core/k3;->goto:Lfreemarker/core/h0;

    invoke-virtual {v3}, Lfreemarker/core/h0;->instanceof()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/k3;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->protected(Lfreemarker/core/d0;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    iget v1, p0, Lfreemarker/core/k3;->break:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 3
    iget-object v1, p0, Lfreemarker/core/k3;->this:Lfreemarker/core/h0;

    invoke-virtual {v1, p1}, Lfreemarker/core/h0;->protected(Lfreemarker/core/d0;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 4
    new-instance v1, Lfreemarker/core/import;

    iget v2, p0, Lfreemarker/core/k3;->break:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-direct {v1, v0, p1, v6, v4}, Lfreemarker/core/import;-><init>(IIZZ)V

    return-object v1

    .line 5
    :cond_3
    invoke-static {p0}, Landroid/support/v4/ul2;->super(Lfreemarker/core/h4;)I

    move-result p1

    sget v1, Landroid/support/v4/ul2;->new:I

    if-lt p1, v1, :cond_4

    new-instance p1, Lfreemarker/core/u1;

    invoke-direct {p1, v0}, Lfreemarker/core/u1;-><init>(I)V

    goto :goto_3

    :cond_4
    new-instance p1, Lfreemarker/core/m2;

    invoke-direct {p1, v0}, Lfreemarker/core/m2;-><init>(I)V

    :goto_3
    return-object p1
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/k3;

    iget-object v1, p0, Lfreemarker/core/k3;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/k3;->this:Lfreemarker/core/h0;

    .line 3
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    iget p2, p0, Lfreemarker/core/k3;->break:I

    invoke-direct {v0, v1, p1, p2}, Lfreemarker/core/k3;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;I)V

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/k3;->this:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/k3;->goto:Lfreemarker/core/h0;

    return-object p1
.end method
