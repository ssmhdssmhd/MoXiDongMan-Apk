.class final Lfreemarker/core/goto;
.super Lfreemarker/core/h0;
.source "SourceFile"


# static fields
.field public static final catch:I = 0x0

.field public static final class:I = 0x1

.field public static final const:I = 0x2

.field public static final final:I = 0x3

.field private static final super:[C


# instance fields
.field private final break:I

.field private final goto:Lfreemarker/core/h0;

.field private final this:Lfreemarker/core/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/goto;->super:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2ds
        0x2as
        0x2fs
        0x25s
    .end array-data
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/h0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/goto;->goto:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/goto;->this:Lfreemarker/core/h0;

    .line 4
    iput p3, p0, Lfreemarker/core/goto;->break:I

    return-void
.end method

.method public static d(Lfreemarker/core/d0;Lfreemarker/core/h4;Ljava/lang/Number;ILjava/lang/Number;)Lfreemarker/template/TemplateModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Landroid/support/v4/nl2;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lfreemarker/core/f0;->super(Lfreemarker/core/d0;Lfreemarker/core/h4;)Lfreemarker/core/else;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    if-eq p3, v3, :cond_3

    if-eq p3, v2, :cond_2

    const/4 v4, 0x3

    if-eq p3, v4, :cond_1

    .line 2
    :try_start_0
    instance-of p2, p1, Lfreemarker/core/h0;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, "Unknown operation: "

    if-eqz p2, :cond_0

    .line 3
    :try_start_1
    new-instance p2, Landroid/support/v4/nl2;

    check-cast p1, Lfreemarker/core/h0;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p4, v0, v1

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v3

    invoke-direct {p2, p1, v0}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw p2

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/nl2;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p4, p2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-direct {p1, p2}, Landroid/support/v4/nl2;-><init>([Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Landroid/support/v4/az1;

    invoke-virtual {v0, p2, p4}, Lfreemarker/core/else;->case(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Landroid/support/v4/az1;

    invoke-virtual {v0, p2, p4}, Lfreemarker/core/else;->try(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    return-object p1

    .line 8
    :cond_3
    new-instance p1, Landroid/support/v4/az1;

    invoke-virtual {v0, p2, p4}, Lfreemarker/core/else;->else(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    return-object p1

    .line 9
    :cond_4
    new-instance p1, Landroid/support/v4/az1;

    invoke-virtual {v0, p2, p4}, Lfreemarker/core/else;->catch(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Landroid/support/v4/nl2;

    new-array p3, v2, [Ljava/lang/Object;

    const-string p4, "Arithmetic operation failed"

    aput-object p4, p3, v1

    .line 11
    invoke-virtual {p1}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_5

    new-array p4, v2, [Ljava/lang/String;

    const-string v0, ": "

    aput-object v0, p4, v1

    invoke-virtual {p1}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v3

    goto :goto_0

    :cond_5
    const-string p4, " (see cause exception)"

    :goto_0
    aput-object p4, p3, v3

    invoke-direct {p2, p1, p0, p3}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p2
.end method

.method public static e(I)C
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/core/goto;->super:[C

    aget-char p0, v0, p0

    return p0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/goto;->break:I

    invoke-static {v0}, Lfreemarker/core/goto;->e(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/goto;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lfreemarker/core/goto;->break:I

    invoke-static {v2}, Lfreemarker/core/goto;->e(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/goto;->this:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->while:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lfreemarker/core/f3;->new:Lfreemarker/core/f3;

    return-object p1

    .line 4
    :cond_2
    sget-object p1, Lfreemarker/core/f3;->for:Lfreemarker/core/f3;

    return-object p1
.end method

.method public instanceof()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/h0;->else:Lfreemarker/template/TemplateModel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/goto;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/goto;->this:Lfreemarker/core/h0;

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

    :goto_1
    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/goto;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->protected(Lfreemarker/core/d0;)Ljava/lang/Number;

    move-result-object v0

    iget v1, p0, Lfreemarker/core/goto;->break:I

    iget-object v2, p0, Lfreemarker/core/goto;->this:Lfreemarker/core/h0;

    invoke-virtual {v2, p1}, Lfreemarker/core/h0;->protected(Lfreemarker/core/d0;)Ljava/lang/Number;

    move-result-object v2

    invoke-static {p1, p0, v0, v1, v2}, Lfreemarker/core/goto;->d(Lfreemarker/core/d0;Lfreemarker/core/h4;Ljava/lang/Number;ILjava/lang/Number;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/goto;

    iget-object v1, p0, Lfreemarker/core/goto;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/goto;->this:Lfreemarker/core/h0;

    .line 3
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    iget p2, p0, Lfreemarker/core/goto;->break:I

    invoke-direct {v0, v1, p1, p2}, Lfreemarker/core/goto;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;I)V

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lfreemarker/core/goto;->break:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/goto;->this:Lfreemarker/core/h0;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Lfreemarker/core/goto;->goto:Lfreemarker/core/h0;

    return-object p1
.end method
