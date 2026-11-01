.class Lfreemarker/core/e2;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/e2$do;
    }
.end annotation


# static fields
.field public static final:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "freemarker.ext.jython.if"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/e2;->final:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lfreemarker/core/e2;->final:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/e2$do;

    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, p1}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v2}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Lfreemarker/core/e2$do;-><init>(Lfreemarker/core/e2;Ljava/lang/String;Lfreemarker/core/d0;Lfreemarker/template/static;)V

    return-object v0
.end method
