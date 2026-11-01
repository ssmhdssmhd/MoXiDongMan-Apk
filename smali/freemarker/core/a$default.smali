.class Lfreemarker/core/a$default;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "default"
.end annotation


# instance fields
.field private final:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 2
    iget v0, p0, Lfreemarker/core/a$default;->final:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    instance-of v0, v3, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz v0, :cond_0

    .line 3
    check-cast v3, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v3}, Lfreemarker/template/TemplateCollectionModelEx;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_2

    .line 4
    :cond_0
    instance-of v0, v3, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_1

    .line 5
    check-cast v3, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p1

    goto :goto_2

    .line 6
    :cond_1
    instance-of v0, v3, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz v0, :cond_2

    .line 7
    check-cast v3, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v3}, Lfreemarker/template/TemplateCollectionModelEx;->size()I

    move-result p1

    goto :goto_2

    .line 8
    :cond_2
    instance-of v0, v3, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_3

    .line 9
    check-cast v3, Lfreemarker/template/TemplateHashModelEx;

    invoke-interface {v3}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result p1

    goto :goto_2

    .line 10
    :cond_3
    instance-of v0, v3, Lfreemarker/core/i1;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    move-object v0, v3

    check-cast v0, Lfreemarker/core/i1;

    .line 11
    invoke-virtual {v0}, Lfreemarker/core/i1;->if()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 12
    invoke-virtual {v0}, Lfreemarker/core/u3;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 14
    iget v0, p0, Lfreemarker/core/a$default;->final:I

    if-ne v2, v0, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    goto :goto_0

    :cond_5
    :goto_1
    move p1, v2

    .line 16
    :goto_2
    new-instance v0, Landroid/support/v4/az1;

    invoke-direct {v0, p1}, Landroid/support/v4/az1;-><init>(I)V

    return-object v0

    .line 17
    :cond_6
    new-instance v0, Lfreemarker/core/r4;

    iget-object v4, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lfreemarker/template/TemplateHashModelEx;

    aput-object v6, v5, v2

    const-class v2, Lfreemarker/template/TemplateSequenceModel;

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-class v2, Lfreemarker/template/TemplateCollectionModelEx;

    aput-object v2, v5, v1

    const-string v6, "extended-hash or sequence or extended collection"

    move-object v1, v0

    move-object v2, v4

    move-object v4, v6

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public q(Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/return;->q(Lfreemarker/core/h0;)V

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/h0;->switch()V

    return-void
.end method

.method public r(ILfreemarker/core/z2;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lfreemarker/core/z2;->getAsNumber()Ljava/lang/Number;

    move-result-object p2

    invoke-static {p2}, Lfreemarker/template/utility/catch;->else(Ljava/lang/Number;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p2, Landroid/support/v4/mc;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported comparator operator code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :pswitch_0
    iput p2, p0, Lfreemarker/core/a$default;->final:I

    goto :goto_0

    :pswitch_1
    add-int/lit8 p2, p2, 0x1

    .line 4
    iput p2, p0, Lfreemarker/core/a$default;->final:I

    goto :goto_0

    :pswitch_2
    add-int/lit8 p2, p2, 0x1

    .line 5
    iput p2, p0, Lfreemarker/core/a$default;->final:I

    goto :goto_0

    .line 6
    :pswitch_3
    iput p2, p0, Lfreemarker/core/a$default;->final:I

    goto :goto_0

    :pswitch_4
    add-int/lit8 p2, p2, 0x1

    .line 7
    iput p2, p0, Lfreemarker/core/a$default;->final:I

    goto :goto_0

    :pswitch_5
    add-int/lit8 p2, p2, 0x1

    .line 8
    iput p2, p0, Lfreemarker/core/a$default;->final:I

    :catch_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
