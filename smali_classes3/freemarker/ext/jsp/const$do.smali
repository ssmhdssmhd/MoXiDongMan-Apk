.class Lfreemarker/ext/jsp/const$do;
.super Ljavax/servlet/jsp/tagext/JspFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jsp/const;->execute(Lfreemarker/core/d0;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/ext/jsp/else;

.field public final synthetic for:Lfreemarker/ext/jsp/const;

.field public final synthetic if:Lfreemarker/template/TemplateDirectiveBody;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jsp/const;Lfreemarker/ext/jsp/else;Lfreemarker/template/TemplateDirectiveBody;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/const$do;->for:Lfreemarker/ext/jsp/const;

    iput-object p2, p0, Lfreemarker/ext/jsp/const$do;->do:Lfreemarker/ext/jsp/else;

    iput-object p3, p0, Lfreemarker/ext/jsp/const$do;->if:Lfreemarker/template/TemplateDirectiveBody;

    invoke-direct {p0}, Ljavax/servlet/jsp/tagext/JspFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljavax/servlet/jsp/JspContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/const$do;->do:Lfreemarker/ext/jsp/else;

    return-object v0
.end method

.method public if(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jsp/const$do;->if:Lfreemarker/template/TemplateDirectiveBody;

    if-nez p1, :cond_0

    iget-object p1, p0, Lfreemarker/ext/jsp/const$do;->do:Lfreemarker/ext/jsp/else;

    invoke-virtual {p1}, Lfreemarker/ext/jsp/else;->this()Ljavax/servlet/jsp/JspWriter;

    move-result-object p1

    :cond_0
    invoke-interface {v0, p1}, Lfreemarker/template/TemplateDirectiveBody;->render(Ljava/io/Writer;)V
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lfreemarker/ext/jsp/const$if;

    invoke-direct {v0, p1}, Lfreemarker/ext/jsp/const$if;-><init>(Lfreemarker/template/TemplateException;)V

    throw v0
.end method
