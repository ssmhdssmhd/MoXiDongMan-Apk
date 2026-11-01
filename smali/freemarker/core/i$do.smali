.class Lfreemarker/core/i$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateBooleanModel;
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Lfreemarker/template/TemplateSequenceModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/i$do$new;
    }
.end annotation


# instance fields
.field private case:Ljava/util/ArrayList;

.field public final do:Ljava/util/regex/Pattern;

.field private for:Ljava/util/regex/Matcher;

.field public final if:Ljava/lang/String;

.field private new:Ljava/lang/Boolean;

.field private try:Lfreemarker/template/TemplateSequenceModel;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/i$do;->do:Ljava/util/regex/Pattern;

    .line 3
    iput-object p2, p0, Lfreemarker/core/i$do;->if:Ljava/lang/String;

    return-void
.end method

.method public static synthetic do(Lfreemarker/core/i$do;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/i$do;->case:Ljava/util/ArrayList;

    return-object p0
.end method

.method private for()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lfreemarker/core/i$do;->do:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lfreemarker/core/i$do;->if:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lfreemarker/core/i$do$new;

    iget-object v3, p0, Lfreemarker/core/i$do;->if:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lfreemarker/core/i$do$new;-><init>(Ljava/lang/String;Ljava/util/regex/Matcher;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Lfreemarker/core/i$do;->case:Ljava/util/ArrayList;

    return-object v0
.end method

.method private new()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/i$do;->do:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lfreemarker/core/i$do;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 3
    iput-object v0, p0, Lfreemarker/core/i$do;->for:Ljava/util/regex/Matcher;

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/i$do;->new:Ljava/lang/Boolean;

    return v1
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/i$do;->case:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/i$do;->for()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public getAsBoolean()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/i$do;->new:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lfreemarker/core/i$do;->new()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public if()Lfreemarker/template/TemplateModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/i$do;->try:Lfreemarker/template/TemplateSequenceModel;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lfreemarker/core/i$do;->for:Ljava/util/regex/Matcher;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lfreemarker/core/i$do;->new()Z

    .line 4
    iget-object v0, p0, Lfreemarker/core/i$do;->for:Ljava/util/regex/Matcher;

    .line 5
    :cond_0
    new-instance v1, Lfreemarker/core/i$do$do;

    invoke-direct {v1, p0, v0}, Lfreemarker/core/i$do$do;-><init>(Lfreemarker/core/i$do;Ljava/util/regex/Matcher;)V

    .line 6
    iput-object v1, p0, Lfreemarker/core/i$do;->try:Lfreemarker/template/TemplateSequenceModel;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/i$do;->case:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/i$do;->do:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lfreemarker/core/i$do;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    new-instance v1, Lfreemarker/core/i$do$if;

    invoke-direct {v1, p0, v0}, Lfreemarker/core/i$do$if;-><init>(Lfreemarker/core/i$do;Ljava/util/regex/Matcher;)V

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Lfreemarker/core/i$do$for;

    invoke-direct {v1, p0, v0}, Lfreemarker/core/i$do$for;-><init>(Lfreemarker/core/i$do;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/i$do;->case:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/i$do;->for()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
