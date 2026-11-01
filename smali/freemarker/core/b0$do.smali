.class Lfreemarker/core/b0$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/b0;->j(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/l3;IZ)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lfreemarker/template/TemplateModelIterator;

.field private do:Z

.field public final synthetic else:I

.field public final synthetic for:Z

.field public final synthetic goto:Lfreemarker/core/b0;

.field private if:I

.field public final synthetic new:I

.field public final synthetic try:Z


# direct methods
.method public constructor <init>(Lfreemarker/core/b0;ZIZLfreemarker/template/TemplateModelIterator;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/b0$do;->goto:Lfreemarker/core/b0;

    iput-boolean p2, p0, Lfreemarker/core/b0$do;->for:Z

    iput p3, p0, Lfreemarker/core/b0$do;->new:I

    iput-boolean p4, p0, Lfreemarker/core/b0$do;->try:Z

    iput-object p5, p0, Lfreemarker/core/b0$do;->case:Lfreemarker/template/TemplateModelIterator;

    iput p6, p0, Lfreemarker/core/b0$do;->else:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/b0$do;->do:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/b0$do;->goto:Lfreemarker/core/b0;

    iget-object v1, p0, Lfreemarker/core/b0$do;->case:Lfreemarker/template/TemplateModelIterator;

    iget v2, p0, Lfreemarker/core/b0$do;->else:I

    invoke-static {v0, v1, v2}, Lfreemarker/core/b0;->e(Lfreemarker/core/b0;Lfreemarker/template/TemplateModelIterator;I)V

    .line 3
    iget v0, p0, Lfreemarker/core/b0$do;->else:I

    iput v0, p0, Lfreemarker/core/b0$do;->if:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lfreemarker/core/b0$do;->do:Z

    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b0$do;->do()V

    .line 2
    iget-boolean v0, p0, Lfreemarker/core/b0$do;->for:Z

    if-nez v0, :cond_0

    iget v0, p0, Lfreemarker/core/b0$do;->if:I

    iget v1, p0, Lfreemarker/core/b0$do;->new:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lfreemarker/core/b0$do;->try:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfreemarker/core/b0$do;->case:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b0$do;->do()V

    .line 2
    iget-boolean v0, p0, Lfreemarker/core/b0$do;->for:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lfreemarker/core/b0$do;->if:I

    iget v2, p0, Lfreemarker/core/b0$do;->new:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/vl2;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Iterator has no more elements (at index "

    aput-object v4, v2, v3

    iget v3, p0, Lfreemarker/core/b0$do;->if:I

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, ")"

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lfreemarker/core/b0$do;->try:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lfreemarker/core/b0$do;->case:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lfreemarker/core/b0$do;->goto:Lfreemarker/core/b0;

    iget v1, p0, Lfreemarker/core/b0$do;->if:I

    iget v2, p0, Lfreemarker/core/b0$do;->new:I

    invoke-static {v0, v1, v2}, Lfreemarker/core/b0;->d(Lfreemarker/core/b0;II)Landroid/support/v4/vl2;

    move-result-object v0

    throw v0

    .line 7
    :cond_3
    :goto_1
    iget-object v0, p0, Lfreemarker/core/b0$do;->case:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 8
    iget v2, p0, Lfreemarker/core/b0$do;->if:I

    add-int/2addr v2, v1

    iput v2, p0, Lfreemarker/core/b0$do;->if:I

    return-object v0
.end method
