.class public Lfreemarker/template/utility/final;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/utility/final$do;
    }
.end annotation


# static fields
.field private static final for:Ljava/lang/String; = "single_line"

.field private static final if:Ljava/lang/String; = "buffer_size"

.field public static final new:Lfreemarker/template/utility/final;


# instance fields
.field private do:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/template/utility/final;

    invoke-direct {v0}, Lfreemarker/template/utility/final;-><init>()V

    sput-object v0, Lfreemarker/template/utility/final;->new:Lfreemarker/template/utility/final;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/template/utility/final;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lfreemarker/template/utility/final;->do:I

    return-void
.end method


# virtual methods
.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/template/utility/final;->do:I

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    const-string v2, "buffer_size"

    .line 2
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateNumberModel;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    const-string v2, "single_line"

    .line 4
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/template/TemplateBooleanModel;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, p2

    goto :goto_0

    .line 6
    :catch_0
    new-instance p1, Landroid/support/v4/k52;

    const-string p2, "Expecting boolean argument to single_line"

    invoke-direct {p1, p2}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :catch_1
    new-instance p1, Landroid/support/v4/k52;

    const-string p2, "Expecting numerical argument to buffer_size"

    invoke-direct {p1, p2}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    new-instance p2, Lfreemarker/template/utility/final$do;

    invoke-direct {p2, p1, v0, v1}, Lfreemarker/template/utility/final$do;-><init>(Ljava/io/Writer;IZ)V

    return-object p2
.end method
