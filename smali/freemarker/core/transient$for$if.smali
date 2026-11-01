.class Lfreemarker/core/transient$for$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/transient$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/transient$for$if;->do:Lfreemarker/template/TemplateModel;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lfreemarker/core/transient$for$if;->do:Lfreemarker/template/TemplateModel;

    return-object p1
.end method
