.class Lfreemarker/ext/jsp/do$case;
.super Lfreemarker/ext/jsp/do$if;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateTransformModel;

.field private final if:Lfreemarker/template/TemplateMethodModelEx;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateTransformModel;Lfreemarker/template/TemplateMethodModelEx;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/do$if;-><init>(Lfreemarker/ext/jsp/do$do;)V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/jsp/do$case;->do:Lfreemarker/template/TemplateTransformModel;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/jsp/do$case;->if:Lfreemarker/template/TemplateMethodModelEx;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/do$case;->if:Lfreemarker/template/TemplateMethodModelEx;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateMethodModelEx;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/do$case;->do:Lfreemarker/template/TemplateTransformModel;

    invoke-interface {v0, p1, p2}, Lfreemarker/template/TemplateTransformModel;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method
