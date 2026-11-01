.class final Lfreemarker/core/d0$break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateDirectiveBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "break"
.end annotation


# instance fields
.field private final do:[Lfreemarker/core/b4;

.field public final synthetic if:Lfreemarker/core/d0;


# direct methods
.method private constructor <init>(Lfreemarker/core/d0;[Lfreemarker/core/b4;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/d0$break;->if:Lfreemarker/core/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/d0$break;->do:[Lfreemarker/core/b4;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/d0;[Lfreemarker/core/b4;Lfreemarker/core/d0$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/d0$break;-><init>(Lfreemarker/core/d0;[Lfreemarker/core/b4;)V

    return-void
.end method


# virtual methods
.method public do()[Lfreemarker/core/b4;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0$break;->do:[Lfreemarker/core/b4;

    return-object v0
.end method

.method public render(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0$break;->if:Lfreemarker/core/d0;

    invoke-static {v0}, Lfreemarker/core/d0;->U0(Lfreemarker/core/d0;)Ljava/io/Writer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/d0$break;->if:Lfreemarker/core/d0;

    invoke-static {v1, p1}, Lfreemarker/core/d0;->V0(Lfreemarker/core/d0;Ljava/io/Writer;)Ljava/io/Writer;

    .line 3
    :try_start_0
    iget-object p1, p0, Lfreemarker/core/d0$break;->if:Lfreemarker/core/d0;

    iget-object v1, p0, Lfreemarker/core/d0$break;->do:[Lfreemarker/core/b4;

    invoke-virtual {p1, v1}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lfreemarker/core/d0$break;->if:Lfreemarker/core/d0;

    invoke-static {p1, v0}, Lfreemarker/core/d0;->V0(Lfreemarker/core/d0;Ljava/io/Writer;)Ljava/io/Writer;

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lfreemarker/core/d0$break;->if:Lfreemarker/core/d0;

    invoke-static {v1, v0}, Lfreemarker/core/d0;->V0(Lfreemarker/core/d0;Ljava/io/Writer;)Ljava/io/Writer;

    .line 5
    throw p1
.end method
