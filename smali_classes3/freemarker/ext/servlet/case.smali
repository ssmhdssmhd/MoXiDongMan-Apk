.class final Lfreemarker/ext/servlet/case;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/servlet/case$do;
    }
.end annotation


# static fields
.field public static final do:Ljava/lang/String; = "class://"

.field public static final for:Ljava/lang/String; = "file://"

.field public static final if:Ljava/lang/String; = "classpath:"

.field public static final new:Ljava/lang/String; = "settings"

.field private static final try:Lfreemarker/log/if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.servlet"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/servlet/case;->try:Lfreemarker/log/if;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    invoke-static {p0}, Lfreemarker/ext/servlet/case;->if(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    const/16 v3, 0x2c

    add-int/lit8 v1, v1, -0x1

    .line 5
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    add-int/lit8 v4, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4

    :goto_3
    if-eq v1, v2, :cond_3

    .line 10
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, ""

    goto :goto_0

    .line 11
    :cond_4
    new-instance p0, Lfreemarker/ext/servlet/case$do;

    const-string v0, "Missing list item before a comma"

    invoke-direct {p0, v0}, Lfreemarker/ext/servlet/case$do;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0
.end method

.method public static do(Ljava/lang/String;Lfreemarker/template/do;Ljava/lang/Class;Ljavax/servlet/ServletContext;)Lfreemarker/cache/TemplateLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfreemarker/ext/servlet/case;->if(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v3, p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "class://"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 p1, 0x8

    .line 5
    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lfreemarker/ext/servlet/case;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p3, Lfreemarker/cache/for;

    invoke-direct {p3, p2, p1}, Lfreemarker/cache/for;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const-string v4, "classpath:"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 p1, 0xa

    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lfreemarker/ext/servlet/case;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    if-nez p3, :cond_2

    .line 12
    sget-object p3, Lfreemarker/ext/servlet/case;->try:Lfreemarker/log/if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Thread Context Class Loader was found. Falling back to the class loader of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p3, v1}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 16
    :cond_2
    new-instance p2, Lfreemarker/cache/for;

    invoke-direct {p2, p3, p1}, Lfreemarker/cache/for;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    move-object p3, p2

    goto/16 :goto_3

    :cond_3
    const-string v4, "file://"

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 p1, 0x7

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p3, Lfreemarker/cache/else;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p2}, Lfreemarker/cache/else;-><init>(Ljava/io/File;)V

    goto/16 :goto_3

    :cond_4
    const-string v4, "["

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21
    invoke-virtual {p1}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/we2;->intValue()I

    move-result v4

    sget v6, Landroid/support/v4/ul2;->try:I

    if-lt v4, v6, :cond_7

    const-string v4, "]"

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v3}, Lfreemarker/ext/servlet/case;->case(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lfreemarker/cache/TemplateLoader;

    .line 26
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 27
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 28
    invoke-static {v6, p1, p2, p3}, Lfreemarker/ext/servlet/case;->do(Ljava/lang/String;Lfreemarker/template/do;Ljava/lang/Class;Ljavax/servlet/ServletContext;)Lfreemarker/cache/TemplateLoader;

    move-result-object v6

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 29
    :cond_5
    new-instance p3, Lfreemarker/cache/catch;

    invoke-direct {p3, v4}, Lfreemarker/cache/catch;-><init>([Lfreemarker/cache/TemplateLoader;)V

    goto :goto_3

    .line 30
    :cond_6
    new-instance p0, Lfreemarker/ext/servlet/case$do;

    const-string p1, "Failed to parse template path; closing \"]\" is missing."

    invoke-direct {p0, p1}, Lfreemarker/ext/servlet/case$do;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string p2, "{"

    .line 31
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 32
    invoke-virtual {p1}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/we2;->intValue()I

    move-result p1

    sget p2, Landroid/support/v4/ul2;->try:I

    if-ge p1, p2, :cond_8

    goto :goto_2

    .line 33
    :cond_8
    new-instance p0, Lfreemarker/ext/servlet/case$do;

    const-string p1, "Template paths starting with \"{\" are reseved for future purposes"

    invoke-direct {p0, p1}, Lfreemarker/ext/servlet/case$do;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_9
    :goto_2
    new-instance p1, Lfreemarker/cache/package;

    invoke-direct {p1, p3, v3}, Lfreemarker/cache/package;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;)V

    move-object p3, p1

    :goto_3
    if-eq v0, v2, :cond_b

    const/16 p1, 0x28

    .line 35
    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    add-int/2addr p1, v5

    .line 36
    invoke-static {}, Landroid/support/v4/sl2;->if()Landroid/support/v4/sl2;

    move-result-object p2

    .line 37
    invoke-static {p0, p1, p3, p2}, Lfreemarker/core/c5;->goto(Ljava/lang/String;ILjava/lang/Object;Landroid/support/v4/sl2;)I

    move-result p1

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p1, p2, :cond_a

    goto :goto_4

    .line 39
    :cond_a
    new-instance p1, Lfreemarker/ext/servlet/case$do;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Template path should end after the setting list in: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/ext/servlet/case$do;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 40
    new-instance p2, Lfreemarker/ext/servlet/case$do;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set properties in: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lfreemarker/ext/servlet/case$do;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_b
    :goto_4
    return-object p3
.end method

.method public static for(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :goto_0
    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/lang/String;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ltz v0, :cond_10

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_1

    goto/16 :goto_7

    :cond_1
    add-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_1
    if-lez v4, :cond_9

    if-gez v0, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x22

    const/4 v8, 0x2

    if-eqz v5, :cond_6

    const/16 v9, 0x5c

    if-eq v5, v1, :cond_4

    if-eq v5, v8, :cond_3

    goto :goto_3

    :cond_3
    if-ne v6, v7, :cond_8

    if-lez v0, :cond_5

    add-int/lit8 v6, v0, -0x1

    .line 5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_8

    goto :goto_2

    :cond_4
    const/16 v7, 0x27

    if-ne v6, v7, :cond_8

    if-lez v0, :cond_5

    add-int/lit8 v6, v0, -0x1

    .line 6
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_8

    :cond_5
    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    if-eq v6, v7, :cond_7

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :pswitch_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :pswitch_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x2

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_9
    :goto_4
    if-ltz v0, :cond_a

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_a

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v0, 0x1

    :goto_5
    if-ltz v0, :cond_b

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_c

    return v2

    .line 9
    :cond_c
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_6
    if-ltz v0, :cond_d

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_d

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_d
    if-ltz v0, :cond_10

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v3, 0x3f

    if-eq p0, v3, :cond_e

    goto :goto_7

    :cond_e
    const-string p0, "settings"

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    return v0

    .line 13
    :cond_f
    new-instance v0, Lfreemarker/ext/servlet/case$do;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-static {v1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is unexpected after the \"?\". Expected \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/ext/servlet/case$do;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_7
    return v2

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static new(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2c

    .line 2
    invoke-static {p0, v1}, Lfreemarker/template/utility/super;->t(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 4
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    const/4 v0, -0x1

    const-string v1, "Missing list item berfore a comma"

    invoke-direct {p0, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    return-object v0
.end method

.method public static try(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfreemarker/ext/servlet/case;->new(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
