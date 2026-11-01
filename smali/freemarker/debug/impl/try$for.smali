.class Lfreemarker/debug/impl/try$for;
.super Lfreemarker/debug/impl/try$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# static fields
.field private static final new:Ljava/util/List;


# instance fields
.field private for:Lfreemarker/template/TemplateModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/debug/impl/try$if;->if:Ljava/util/List;

    const-string v1, "sharedVariables"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lfreemarker/debug/impl/try$try;->do(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/try$for;->new:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/debug/impl/try$if;-><init>(Lfreemarker/core/t;)V

    .line 2
    new-instance p1, Lfreemarker/debug/impl/try$for$do;

    invoke-direct {p1, p0}, Lfreemarker/debug/impl/try$for$do;-><init>(Lfreemarker/debug/impl/try$for;)V

    iput-object p1, p0, Lfreemarker/debug/impl/try$for;->for:Lfreemarker/template/TemplateModel;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "sharedVariables"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lfreemarker/debug/impl/try$for;->for:Lfreemarker/template/TemplateModel;

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lfreemarker/debug/impl/try$if;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public if()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/debug/impl/try$for;->new:Ljava/util/List;

    return-object v0
.end method
