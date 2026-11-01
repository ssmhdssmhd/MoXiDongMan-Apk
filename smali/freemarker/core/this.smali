.class final Lfreemarker/core/this;
.super Lfreemarker/core/b4;
.source "SourceFile"


# static fields
.field private static final import:I = 0x10001

.field private static final native:I = 0x10002

.field private static final public:I = 0x10003

.field public static final return:I = 0x1

.field public static final static:I = 0x2

.field public static final switch:I = 0x3

.field private static final throws:Ljava/lang/Number;

.field private static final while:I = 0x10000


# instance fields
.field private final class:I

.field private final const:Ljava/lang/String;

.field private final final:I

.field private final super:Lfreemarker/core/h0;

.field private throw:Lfreemarker/core/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lfreemarker/core/this;->throws:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILfreemarker/core/h0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput p4, p0, Lfreemarker/core/this;->class:I

    .line 3
    iput-object p1, p0, Lfreemarker/core/this;->const:Ljava/lang/String;

    const/16 p1, 0x69

    if-ne p2, p1, :cond_0

    const/high16 p1, 0x10000

    .line 4
    iput p1, p0, Lfreemarker/core/this;->final:I

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 5
    new-instance p1, Landroid/support/v4/mc;

    invoke-direct {p1}, Landroid/support/v4/mc;-><init>()V

    throw p1

    :pswitch_0
    const p1, 0x10003

    .line 6
    iput p1, p0, Lfreemarker/core/this;->final:I

    goto :goto_0

    :pswitch_1
    const p1, 0x10002

    .line 7
    iput p1, p0, Lfreemarker/core/this;->final:I

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    .line 8
    iput p1, p0, Lfreemarker/core/this;->final:I

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    .line 9
    iput p1, p0, Lfreemarker/core/this;->final:I

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lfreemarker/core/this;->final:I

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lfreemarker/core/this;->final:I

    goto :goto_0

    :pswitch_6
    const p1, 0x10001

    .line 12
    iput p1, p0, Lfreemarker/core/this;->final:I

    .line 13
    :goto_0
    iput-object p3, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static r(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "#local"

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string p0, "#global"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "#assign"

    return-object p0

    :cond_2
    const-string p0, "#{unknown_assignment_type}"

    return-object p0
.end method

.method private s()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lfreemarker/core/this;->final:I

    const-string v1, "="

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    const v2, 0x10001

    if-ne v0, v2, :cond_1

    const-string v0, "+="

    return-object v0

    :cond_1
    const v2, 0x10002

    if-ne v0, v2, :cond_2

    const-string v0, "++"

    return-object v0

    :cond_2
    const v2, 0x10003

    if-ne v0, v2, :cond_3

    const-string v0, "--"

    return-object v0

    .line 2
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lfreemarker/core/this;->final:I

    invoke-static {v2}, Lfreemarker/core/goto;->e(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "global scope"

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported scope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string p0, "local scope"

    return-object p0

    :cond_2
    const-string p0, "template namespace"

    return-object p0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/this;->class:I

    invoke-static {v0}, Lfreemarker/core/this;->r(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->class:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lfreemarker/core/f3;->catch:Lfreemarker/core/f3;

    return-object p1

    .line 4
    :cond_2
    sget-object p1, Lfreemarker/core/f3;->break:Lfreemarker/core/f3;

    return-object p1

    .line 5
    :cond_3
    sget-object p1, Lfreemarker/core/f3;->this:Lfreemarker/core/f3;

    return-object p1

    .line 6
    :cond_4
    sget-object p1, Lfreemarker/core/f3;->goto:Lfreemarker/core/f3;

    return-object p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/this;->throw:Lfreemarker/core/h0;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    iget v0, p0, Lfreemarker/core/this;->class:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lfreemarker/core/d0;->I1()Lfreemarker/core/d0$this;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/support/v4/mc;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected scope type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lfreemarker/core/this;->class:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lfreemarker/core/d0;->y1()Lfreemarker/core/d0$this;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 7
    :try_start_0
    check-cast v0, Lfreemarker/core/d0$this;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_12

    .line 8
    :goto_0
    iget v2, p0, Lfreemarker/core/this;->final:I

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_5

    .line 9
    iget-object v2, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    invoke-virtual {v2, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    if-nez v2, :cond_e

    .line 10
    invoke-virtual {p1}, Lfreemarker/core/t;->y()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    sget-object v2, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto/16 :goto_4

    .line 12
    :cond_4
    iget-object v0, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    invoke-static {v0, p1}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p1

    throw p1

    :cond_5
    if-nez v0, :cond_6

    .line 13
    iget-object v2, p0, Lfreemarker/core/this;->const:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lfreemarker/core/d0;->S1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_1

    .line 14
    :cond_6
    iget-object v2, p0, Lfreemarker/core/this;->const:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 15
    :goto_1
    iget v3, p0, Lfreemarker/core/this;->final:I

    const v4, 0x10001

    if-ne v3, v4, :cond_b

    if-nez v2, :cond_8

    .line 16
    invoke-virtual {p1}, Lfreemarker/core/t;->y()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    sget-object v2, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_2

    .line 18
    :cond_7
    iget v0, p0, Lfreemarker/core/this;->class:I

    iget-object v1, p0, Lfreemarker/core/this;->const:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lfreemarker/core/this;->s()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v0, v1, v2, p1}, Lfreemarker/core/b1;->getInstance(ILjava/lang/String;Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p1

    throw p1

    :cond_8
    :goto_2
    move-object v5, v2

    .line 21
    iget-object v2, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    invoke-virtual {v2, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    if-nez v2, :cond_a

    .line 22
    invoke-virtual {p1}, Lfreemarker/core/t;->y()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 23
    sget-object v2, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_3

    .line 24
    :cond_9
    iget-object v0, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    invoke-static {v0, p1}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p1

    throw p1

    :cond_a
    :goto_3
    move-object v7, v2

    .line 25
    iget-object v3, p0, Lfreemarker/core/this;->throw:Lfreemarker/core/h0;

    const/4 v4, 0x0

    iget-object v6, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lfreemarker/core/if;->d(Lfreemarker/core/d0;Lfreemarker/core/h4;Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_4

    .line 26
    :cond_b
    instance-of v3, v2, Lfreemarker/template/TemplateNumberModel;

    if-eqz v3, :cond_10

    .line 27
    check-cast v2, Lfreemarker/template/TemplateNumberModel;

    invoke-static {v2, v1}, Lfreemarker/core/f0;->import(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;)Ljava/lang/Number;

    move-result-object v2

    .line 28
    iget v3, p0, Lfreemarker/core/this;->final:I

    const v4, 0x10002

    if-ne v3, v4, :cond_c

    .line 29
    invoke-virtual {p0}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object v3

    sget-object v4, Lfreemarker/core/this;->throws:Ljava/lang/Number;

    invoke-static {p1, v3, v2, v4}, Lfreemarker/core/if;->e(Lfreemarker/core/d0;Lfreemarker/core/h4;Ljava/lang/Number;Ljava/lang/Number;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_4

    :cond_c
    const v4, 0x10003

    if-ne v3, v4, :cond_d

    .line 30
    invoke-virtual {p0}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lfreemarker/core/this;->throws:Ljava/lang/Number;

    .line 31
    invoke-static {p1, v3, v2, v4, v5}, Lfreemarker/core/goto;->d(Lfreemarker/core/d0;Lfreemarker/core/h4;Ljava/lang/Number;ILjava/lang/Number;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_4

    .line 32
    :cond_d
    iget-object v3, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    invoke-virtual {v3, p1}, Lfreemarker/core/h0;->protected(Lfreemarker/core/d0;)Ljava/lang/Number;

    move-result-object v3

    .line 33
    iget v4, p0, Lfreemarker/core/this;->final:I

    invoke-static {p1, p0, v2, v4, v3}, Lfreemarker/core/goto;->d(Lfreemarker/core/d0;Lfreemarker/core/h4;Ljava/lang/Number;ILjava/lang/Number;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    :cond_e
    :goto_4
    if-nez v0, :cond_f

    .line 34
    iget-object v0, p0, Lfreemarker/core/this;->const:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lfreemarker/core/d0;->r3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_5

    .line 35
    :cond_f
    iget-object p1, p0, Lfreemarker/core/this;->const:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    return-object v1

    :cond_10
    if-nez v2, :cond_11

    .line 36
    iget v0, p0, Lfreemarker/core/this;->class:I

    iget-object v1, p0, Lfreemarker/core/this;->const:Ljava/lang/String;

    invoke-direct {p0}, Lfreemarker/core/this;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lfreemarker/core/b1;->getInstance(ILjava/lang/String;Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p1

    throw p1

    .line 37
    :cond_11
    new-instance v0, Lfreemarker/core/r2;

    iget-object v3, p0, Lfreemarker/core/this;->const:Ljava/lang/String;

    invoke-direct {v0, v3, v2, v1, p1}, Lfreemarker/core/r2;-><init>(Ljava/lang/String;Lfreemarker/template/TemplateModel;[Ljava/lang/String;Lfreemarker/core/d0;)V

    throw v0

    .line 38
    :cond_12
    iget-object v0, p0, Lfreemarker/core/this;->throw:Lfreemarker/core/h0;

    invoke-static {v0, p1}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p1

    throw p1

    .line 39
    :catch_0
    new-instance v1, Lfreemarker/core/p2;

    iget-object v2, p0, Lfreemarker/core/this;->throw:Lfreemarker/core/h0;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/p2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v1
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object v1

    instance-of v1, v1, Lfreemarker/core/break;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/this;->case()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v2, 0x20

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const-string v3, "<"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_2
    iget-object v3, p0, Lfreemarker/core/this;->const:Ljava/lang/String;

    invoke-static {v3}, Landroid/support/v4/yk2;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v3, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    invoke-direct {p0}, Lfreemarker/core/this;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v3, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget-object v2, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    invoke-virtual {v2}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v1, :cond_6

    .line 13
    iget-object v1, p0, Lfreemarker/core/this;->throw:Lfreemarker/core/h0;

    if-eqz v1, :cond_5

    const-string v1, " in "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lfreemarker/core/this;->throw:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz p1, :cond_6

    const-string p1, ">"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/this;->throw:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget p1, p0, Lfreemarker/core/this;->class:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Lfreemarker/core/this;->super:Lfreemarker/core/h0;

    return-object p1

    .line 5
    :cond_3
    invoke-direct {p0}, Lfreemarker/core/this;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_4
    iget-object p1, p0, Lfreemarker/core/this;->const:Ljava/lang/String;

    return-object p1
.end method

.method public u(Lfreemarker/core/h0;)V
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/this;->class:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/mc;

    invoke-direct {p1}, Landroid/support/v4/mc;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput-object p1, p0, Lfreemarker/core/this;->throw:Lfreemarker/core/h0;

    return-void
.end method
