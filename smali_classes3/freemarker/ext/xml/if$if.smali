.class Lfreemarker/ext/xml/if$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/xml/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/ext/xml/if;


# direct methods
.method private constructor <init>(Lfreemarker/ext/xml/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/xml/if$if;->do:Lfreemarker/ext/xml/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/ext/xml/if;Lfreemarker/ext/xml/if$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/ext/xml/if$if;-><init>(Lfreemarker/ext/xml/if;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lfreemarker/ext/xml/if$if;->do:Lfreemarker/ext/xml/if;

    invoke-static {v3}, Lfreemarker/ext/xml/if;->do(Lfreemarker/ext/xml/if;)Lfreemarker/ext/xml/Navigator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lfreemarker/ext/xml/Navigator;->switch(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lfreemarker/ext/xml/if$if;->do:Lfreemarker/ext/xml/if;

    invoke-static {p1, v0}, Lfreemarker/ext/xml/if;->if(Lfreemarker/ext/xml/if;Ljava/util/List;)Lfreemarker/ext/xml/if;

    move-result-object p1

    return-object p1
.end method
