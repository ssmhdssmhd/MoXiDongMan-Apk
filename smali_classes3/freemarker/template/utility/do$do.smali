.class Lfreemarker/template/utility/do$do;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/template/utility/do;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Z

.field public final synthetic do:Ljava/lang/StringBuilder;

.field public final synthetic else:Lfreemarker/template/TemplateModel;

.field public final synthetic for:Z

.field public final synthetic goto:Lfreemarker/template/utility/do;

.field public final synthetic if:Ljava/io/Writer;

.field public final synthetic new:Lfreemarker/core/d0;

.field public final synthetic try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/template/utility/do;Ljava/lang/StringBuilder;Ljava/io/Writer;ZLfreemarker/core/d0;Ljava/lang/String;ZLfreemarker/template/TemplateModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/utility/do$do;->goto:Lfreemarker/template/utility/do;

    iput-object p2, p0, Lfreemarker/template/utility/do$do;->do:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lfreemarker/template/utility/do$do;->if:Ljava/io/Writer;

    iput-boolean p4, p0, Lfreemarker/template/utility/do$do;->for:Z

    iput-object p5, p0, Lfreemarker/template/utility/do$do;->new:Lfreemarker/core/d0;

    iput-object p6, p0, Lfreemarker/template/utility/do$do;->try:Ljava/lang/String;

    iput-boolean p7, p0, Lfreemarker/template/utility/do$do;->case:Z

    iput-object p8, p0, Lfreemarker/template/utility/do$do;->else:Lfreemarker/template/TemplateModel;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ez1;

    iget-object v1, p0, Lfreemarker/template/utility/do$do;->do:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/utility/do$do;->for:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lfreemarker/template/utility/do$do;->new:Lfreemarker/core/d0;

    iget-object v2, p0, Lfreemarker/template/utility/do$do;->try:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/core/d0;->r3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lfreemarker/template/utility/do$do;->case:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lfreemarker/template/utility/do$do;->new:Lfreemarker/core/d0;

    iget-object v2, p0, Lfreemarker/template/utility/do$do;->try:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/core/d0;->p3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lfreemarker/template/utility/do$do;->else:Lfreemarker/template/TemplateModel;

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lfreemarker/template/utility/do$do;->new:Lfreemarker/core/d0;

    iget-object v2, p0, Lfreemarker/template/utility/do$do;->try:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/core/d0;->u3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_0

    .line 8
    :cond_2
    check-cast v1, Lfreemarker/core/d0$this;

    iget-object v2, p0, Lfreemarker/template/utility/do$do;->try:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfreemarker/template/utility/do$do;->try:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/do$do;->if:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/do$do;->do:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method
