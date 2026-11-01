.class Lfreemarker/core/p0$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateDirectiveModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/p0;->exec(Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/template/static;

.field public final synthetic if:Lfreemarker/core/p0;


# direct methods
.method public constructor <init>(Lfreemarker/core/p0;Lfreemarker/template/static;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/p0$do;->if:Lfreemarker/core/p0;

    iput-object p2, p0, Lfreemarker/core/p0$do;->do:Lfreemarker/template/static;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lfreemarker/core/d0;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    array-length p2, p3

    if-nez p2, :cond_1

    if-nez p4, :cond_0

    .line 3
    iget-object p2, p0, Lfreemarker/core/p0$do;->do:Lfreemarker/template/static;

    invoke-virtual {p1, p2}, Lfreemarker/core/d0;->K2(Lfreemarker/template/static;)V

    return-void

    .line 4
    :cond_0
    new-instance p2, Lfreemarker/template/TemplateException;

    const-string p3, "This directive supports no nested content."

    invoke-direct {p2, p3, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/d0;)V

    throw p2

    .line 5
    :cond_1
    new-instance p2, Lfreemarker/template/TemplateException;

    const-string p3, "This directive supports no loop variables."

    invoke-direct {p2, p3, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/d0;)V

    throw p2

    .line 6
    :cond_2
    new-instance p2, Lfreemarker/template/TemplateException;

    const-string p3, "This directive supports no parameters."

    invoke-direct {p2, p3, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/d0;)V

    throw p2
.end method
