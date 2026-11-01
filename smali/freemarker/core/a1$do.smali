.class Lfreemarker/core/a1$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/static;

.field public final synthetic if:Lfreemarker/core/a1;


# direct methods
.method public constructor <init>(Lfreemarker/core/a1;Lfreemarker/template/static;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/a1$do;->if:Lfreemarker/core/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/a1$do;->do:Lfreemarker/template/static;

    return-void
.end method


# virtual methods
.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lfreemarker/core/d0;->o3(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v2, p0, Lfreemarker/core/a1$do;->do:Lfreemarker/template/static;

    invoke-virtual {v0, v2}, Lfreemarker/core/d0;->K2(Lfreemarker/template/static;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v0, v1}, Lfreemarker/core/d0;->o3(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5
    new-instance p2, Lfreemarker/core/a1$do$do;

    invoke-direct {p2, p0, p1, p1}, Lfreemarker/core/a1$do$do;-><init>(Lfreemarker/core/a1$do;Ljava/lang/Object;Ljava/io/Writer;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 6
    :try_start_3
    invoke-virtual {v0, v1}, Lfreemarker/core/d0;->o3(Z)Z

    .line 7
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Landroid/support/v4/vl2;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Template created with \"?"

    aput-object v2, v1, p2

    const/4 p2, 0x1

    iget-object v2, p0, Lfreemarker/core/a1$do;->if:Lfreemarker/core/a1;

    iget-object v2, v2, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v2, v1, p2

    const/4 p2, 0x2

    const-string v2, "\" has stopped with this error:\n\n"

    aput-object v2, v1, p2

    const/4 p2, 0x3

    const-string v2, "---begin-message---\n"

    aput-object v2, v1, p2

    const/4 p2, 0x4

    new-instance v2, Landroid/support/v4/dl2;

    invoke-direct {v2, p1}, Landroid/support/v4/dl2;-><init>(Ljava/lang/Throwable;)V

    aput-object v2, v1, p2

    const/4 p2, 0x5

    const-string v2, "\n---end-message---"

    aput-object v2, v1, p2

    invoke-direct {v0, p1, v1}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0
.end method
