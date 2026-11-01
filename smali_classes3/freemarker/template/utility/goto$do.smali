.class Lfreemarker/template/utility/goto$do;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/template/utility/goto;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/StringBuilder;

.field public final synthetic for:Lfreemarker/core/d0;

.field public final synthetic if:Ljava/io/Writer;

.field public final synthetic new:Lfreemarker/template/utility/goto;


# direct methods
.method public constructor <init>(Lfreemarker/template/utility/goto;Ljava/lang/StringBuilder;Ljava/io/Writer;Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/utility/goto$do;->new:Lfreemarker/template/utility/goto;

    iput-object p2, p0, Lfreemarker/template/utility/goto$do;->do:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lfreemarker/template/utility/goto$do;->if:Ljava/io/Writer;

    iput-object p4, p0, Lfreemarker/template/utility/goto$do;->for:Lfreemarker/core/d0;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method private do()V
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/goto$do;->new:Lfreemarker/template/utility/goto;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/utility/goto$do;->new:Lfreemarker/template/utility/goto;

    invoke-static {v1}, Lfreemarker/template/utility/goto;->do(Lfreemarker/template/utility/goto;)Lorg/python/core/PySystemState;

    move-result-object v1

    iget-object v1, v1, Lorg/python/core/PySystemState;->stdout:Lorg/python/core/PyObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lfreemarker/template/utility/goto$do;->new:Lfreemarker/template/utility/goto;

    iget-object v3, p0, Lfreemarker/template/utility/goto$do;->if:Ljava/io/Writer;

    invoke-virtual {v2, v3}, Lfreemarker/template/utility/goto;->setOut(Ljava/io/Writer;)V

    .line 4
    iget-object v2, p0, Lfreemarker/template/utility/goto$do;->new:Lfreemarker/template/utility/goto;

    const-string v3, "env"

    iget-object v4, p0, Lfreemarker/template/utility/goto$do;->for:Lfreemarker/core/d0;

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/utility/goto;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lfreemarker/template/utility/goto$do;->new:Lfreemarker/template/utility/goto;

    iget-object v3, p0, Lfreemarker/template/utility/goto$do;->do:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfreemarker/template/utility/goto;->exec(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lfreemarker/template/utility/goto$do;->do:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object v2, p0, Lfreemarker/template/utility/goto$do;->new:Lfreemarker/template/utility/goto;

    invoke-virtual {v2, v1}, Lfreemarker/template/utility/goto;->setOut(Lorg/python/core/PyObject;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 9
    iget-object v3, p0, Lfreemarker/template/utility/goto$do;->new:Lfreemarker/template/utility/goto;

    invoke-virtual {v3, v1}, Lfreemarker/template/utility/goto;->setOut(Lorg/python/core/PyObject;)V

    .line 10
    throw v2

    :catchall_1
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/template/utility/goto$do;->do()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/template/utility/goto$do;->do()V

    .line 2
    iget-object v0, p0, Lfreemarker/template/utility/goto$do;->if:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/goto$do;->do:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method
